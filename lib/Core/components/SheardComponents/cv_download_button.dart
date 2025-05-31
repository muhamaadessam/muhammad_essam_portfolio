import 'dart:html' as html;
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../../constants/colors.dart';
import '../../constants/text.dart';
import 'box_widget.dart';
import 'hover_effect_widget.dart';

class CvDownloadButton extends StatefulWidget {
  const CvDownloadButton({
    super.key,
  });

  @override
  State<CvDownloadButton> createState() => _CvDownloadButtonState();
}

class _CvDownloadButtonState extends State<CvDownloadButton> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    Future<void> downloadPdfFromAssets(
        String assetPath, String filename) async {
      // Load PDF file from assets as bytes
      final bytes = await rootBundle.load(assetPath);
      final Uint8List list = bytes.buffer.asUint8List();

      // Create a blob and download
      final blob = html.Blob([list], 'application/pdf');
      final url = html.Url.createObjectUrlFromBlob(blob);

      final anchor = html.AnchorElement(href: url)
        ..setAttribute('download', filename)
        ..click();

      html.Url.revokeObjectUrl(url);
    }

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
        downloadPdfFromAssets(
            'assets/pdfs/Muhammad Essam.pdf', 'Muhammad Essam.pdf');
      },
    );
  }
}
