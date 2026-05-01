// import 'dart:html' as html;
// import 'dart:typed_data';
//
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show rootBundle;
//
// import '../../constants/colors.dart';
// import '../../constants/text.dart';
// import 'box_widget.dart';
// import 'hover_effect_widget.dart';
//
// class CvDownloadButton extends StatefulWidget {
//   const CvDownloadButton({
//     super.key,
//   });
//
//   @override
//   State<CvDownloadButton> createState() => _CvDownloadButtonState();
// }
//
// class _CvDownloadButtonState extends State<CvDownloadButton> {
//   bool _isHovering = false;
//
//   @override
//   Widget build(BuildContext context) {
//     Future<void> downloadPdfFromAssets(
//         String assetPath, String filename) async {
//       // Load PDF file from assets as bytes
//       final bytes = await rootBundle.load(assetPath);
//       final Uint8List list = bytes.buffer.asUint8List();
//
//       // Create a blob and download
//       final blob = html.Blob([list], 'application/pdf');
//       final url = html.Url.createObjectUrlFromBlob(blob);
//
//       final anchor = html.AnchorElement(href: url)
//         ..setAttribute('download', filename)
//         ..click();
//
//       html.Url.revokeObjectUrl(url);
//     }
//
//     return HoverEffectWidget(
//       child: BoxWidget(
//         isHovering: _isHovering,
//         child: TextBody16(
//           'Download CV',
//           color: Colors.white,
//         ),
//         color: mainColor,
//       ),
//       onTap: () {
//         downloadPdfFromAssets(
//             'assets/pdfs/Muhammad Essam.pdf', 'Muhammad Essam.pdf');
//       },
//     );
//   }
// }

import 'dart:html' as html;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

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
    final anchor = html.AnchorElement(href: url)
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
  final docRef =
      FirebaseFirestore.instance.collection('stats').doc('cv_downloads');

  await docRef.set(
    {
      'count': FieldValue.increment(1),
    },
    SetOptions(merge: true),
  );
}
