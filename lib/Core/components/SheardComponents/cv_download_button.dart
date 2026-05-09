import 'dart:html' as html;

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
    html.AnchorElement(href: url)
      ..setAttribute('download', filename)
      ..target = '_blank' // مهم لو اللينك Google Drive
      ..click();
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
  final visitorId = getVisitorId();

  final docRef =
      FirebaseFirestore.instance.collection('stats').doc('cv_downloads');

  final snapshot = await docRef.get();

  final data = snapshot.data() ?? {};

  final users = Map<String, dynamic>.from(data['users'] ?? {});

  final currentCount = users[visitorId] ?? 0;

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
}
