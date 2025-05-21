import 'package:flutter/material.dart';

import '../../../res/assets.dart';
import '../../constants/text.dart';

class TextWithHash extends StatelessWidget {
  const TextWithHash({super.key, required this.text, this.color});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.hash,
          height: 16,
        ),
        const SizedBox(
          width: 2,
        ),
        TextBody16(
          text,
          color: color ?? Colors.white,
        ),
      ],
    );
  }
}
