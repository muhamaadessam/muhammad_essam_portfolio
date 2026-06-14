import 'dart:html' as html;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:muhammad_essam_portfolio/Features/Home/Screens/tablet_home_screen.dart';
import 'package:muhammad_essam_portfolio/Features/Home/Screens/web_home_screen.dart';

import '../../../Core/components/app_responsive.dart';
import 'mobile_home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    trackVisitor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppResponsive(
        mobile: MobileHomeScreen(),
        tablet: TabletHomeScreen(),
        desktop: WebHomeScreen(),
      ),
    );
  }
}

String getVisitorId() {
  final storage = html.window.localStorage;

  if (storage['visitor_id'] != null) {
    return storage['visitor_id']!;
  }

  final newId = DateTime.now().millisecondsSinceEpoch.toString();
  storage['visitor_id'] = newId;

  return newId;
}

Future<void> sendTelegramMessage(String message) async {
  try {
    final configDoc = await FirebaseFirestore.instance
        .collection('config')
        .doc('telegram')
        .get();

    String? botToken;
    String? chatId;

    if (configDoc.exists) {
      final data = configDoc.data();
      botToken = data?['bot_token'];
      chatId = data?['chat_id'];
    }

    // Default placeholders
    botToken ??= 'YOUR_TELEGRAM_BOT_TOKEN';
    chatId ??= 'YOUR_TELEGRAM_CHAT_ID';

    if (botToken == 'YOUR_TELEGRAM_BOT_TOKEN' ||
        chatId == 'YOUR_TELEGRAM_CHAT_ID') {
      debugPrint(
        'Telegram notifications not configured. Please set them in Firestore '
        '(collection: config, doc: telegram, fields: bot_token, chat_id).',
      );
      return;
    }

    final url = Uri.parse('https://api.telegram.org/bot$botToken/sendMessage');
    final response = await http.post(
      url,
      body: {
        'chat_id': chatId,
        'text': message,
        'parse_mode': 'Markdown',
      },
    );

    if (response.statusCode == 200) {
      debugPrint('Telegram notification sent successfully!');
    } else {
      debugPrint('Failed to send Telegram notification: ${response.body}');
    }
  } catch (e) {
    debugPrint('Error sending Telegram notification: $e');
  }
}

Future<void> trackVisitor() async {
  if (kDebugMode) return;
  final visitorId = getVisitorId();

  final docRef = FirebaseFirestore.instance.collection('stats').doc('visitors');

  final snapshot = await docRef.get();

  final data = snapshot.data() ?? {};

  final users = Map<String, dynamic>.from(data['users'] ?? {});

  final currentCount = users[visitorId] ?? 0;
  final isNewVisitor = currentCount == 0;
  final totalVisitors = isNewVisitor ? users.length + 1 : users.length;
  final totalVisits = (data['total_visites'] ?? 0) + 1;

  await docRef.set({
    'total_visitors':
        currentCount == 0 ? FieldValue.increment(1) : users.length,
    'total_visites': FieldValue.increment(1),
    'users': {
      visitorId: currentCount + 1,
    }
  }, SetOptions(merge: true));

  String message;
  if (isNewVisitor) {
    message =
        '🎉 *New Unique Visitor!*\n\nA new user has visited your portfolio!\nTotal Unique Visitors: `$totalVisitors`';
  } else {
    message =
        '👀 *Portfolio Visit!*\n\nA return visitor just opened your portfolio.\nTotal Visits: `$totalVisits`';
  }

  await sendTelegramMessage(message);
}
