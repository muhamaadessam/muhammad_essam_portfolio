import 'dart:html' as html;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
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

Future<void> trackVisitor() async {
  final visitorId = getVisitorId();

  final docRef = FirebaseFirestore.instance.collection('stats').doc('visitors');

  final snapshot = await docRef.get();

  final data = snapshot.data() ?? {};

  final users = Map<String, dynamic>.from(data['users'] ?? {});

  final currentCount = users[visitorId] ?? 0;

  await docRef.set({
    'total_visitors':
        currentCount == 0 ? FieldValue.increment(1) : users.length,
    'total_visites': FieldValue.increment(1),
    'users': {
      visitorId: currentCount + 1,
    }
  }, SetOptions(merge: true));
}
