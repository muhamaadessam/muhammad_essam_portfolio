import 'package:flutter/foundation.dart';
import 'package:web/web.dart' as web;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../Features/Home/Screens/home_screen.dart';
import '../../constants/colors.dart';
import '../../constants/text.dart';
import 'box_widget.dart';
import 'hover_effect_widget.dart';

class CvDownloadButton extends StatefulWidget {
  const CvDownloadButton({super.key});

  @override
  State<CvDownloadButton> createState() => _CvDownloadButtonState();
}

class _CvDownloadButtonState extends State<CvDownloadButton> {
  bool _isHovering = false;

  void downloadFromUrl(String url, String filename) {
    final anchor = web.HTMLAnchorElement()
      ..href = url
      ..download = filename
      ..target = '_blank';
    anchor.click();
  }

  @override
  Widget build(BuildContext context) {
    return HoverEffectWidget(
      child: BoxWidget(
        isHovering: _isHovering,
        child: TextBody16(
          'Download CV',
          color: Colors.white,
        ),
        color: mainColor,
      ),
      onTap: () {
        incrementCvDownload();
        downloadFromUrl(
          'https://drive.google.com/uc?export=download&id=11R3XbF-0bTpnFe4wCdOYy9Qgw4ISQKEc',
          'Muhammad_Essam_CV.pdf',
        );
      },
    );
  }
}

Future<void> incrementCvDownload() async {
  if (kDebugMode) return;
  final visitorId = getVisitorId();

  final docRef =
      FirebaseFirestore.instance.collection('stats').doc('cv_downloads');

  final snapshot = await docRef.get();

  final data = snapshot.data() ?? {};

  final users = Map<String, dynamic>.from(data['users'] ?? {});

  final currentCount = users[visitorId] ?? 0;
  final isNewDownloader = currentCount == 0;
  final totalDownloads = (data['total_downloads'] ?? 0) + 1;
  final totalDownloaders = isNewDownloader
      ? (data['total_downloaders'] ?? 0) + 1
      : (data['total_downloaders'] ?? 0);

  await docRef.set(
    {
      'total_downloads': FieldValue.increment(1),
      'total_downloaders': currentCount == 0
          ? FieldValue.increment(1)
          : data['total_downloaders'] ?? 0,
      'users': {
        visitorId: currentCount + 1,
      },
    },
    SetOptions(merge: true),
  );

  String message;
  if (isNewDownloader) {
    message =
        '📥 *New CV Download!*\n\n*Visitor ID:* `$visitorId`\nA new user has downloaded your CV!\nTotal Unique Downloaders: `$totalDownloaders`';
  } else {
    message =
        '📥 *CV Downloaded Again!*\n\n*Visitor ID:* `$visitorId`\nA return user has downloaded your CV.\nTotal Downloads: `$totalDownloads`';
  }

  await sendTelegramMessage(message);
}
