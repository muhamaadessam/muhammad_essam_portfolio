import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';

class TextWithHash extends StatelessWidget {
  const TextWithHash({super.key, required this.text, this.color});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextBody16(
          '#',
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: mainColor,
        ),
        const SizedBox(
          width: 2,
        ),
        TextBody16(
          text,
          color: color ?? Colors.white,
          // fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
