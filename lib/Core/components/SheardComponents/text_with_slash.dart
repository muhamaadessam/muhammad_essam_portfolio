import 'package:flutter/material.dart';

import '../../../core/constants/text.dart';
import '../../constants/colors.dart';

class TextWithSlash extends StatelessWidget {
  const TextWithSlash({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextBody16(
          '/',
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: mainColor,
        ),
        TextBody16(
          text,
          fontWeight: FontWeight.bold,
        )
      ],
    );
  }
}
