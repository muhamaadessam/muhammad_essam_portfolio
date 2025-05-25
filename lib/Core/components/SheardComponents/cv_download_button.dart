import 'dart:html' as html;
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'box_widget.dart';
import '../../constants/colors.dart';
import '../../constants/text.dart';

class CvDownloadButton extends StatelessWidget {
  const CvDownloadButton({
    super.key,
  });

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

    return InkWell(
      onTap: () {
        downloadPdfFromAssets(
            'assets/pdfs/Muhammad Essam.pdf', 'Muhammad Essam.pdf');
      },
      child: BoxWidget(
        child: TextBody16(
          'Download CV',
          color: Colors.white,
        ),
        color: mainColor,
      ),
    );
  }
}
