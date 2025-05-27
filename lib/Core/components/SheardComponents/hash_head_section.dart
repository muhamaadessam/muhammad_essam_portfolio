import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/components/SheardComponents/text_with_hash.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';
import 'hover_effect_text.dart';
import 'hover_effect_widget.dart';

class HashHeadSection extends StatelessWidget {
  const HashHeadSection({
    super.key,
    required this.text,
    this.isViewAll = false,
    this.flex = 1,
    this.onTap,
  });

  final String text;
  final bool isViewAll;
  final int flex;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextWithHash(text: text),
        SizedBox(
          width: 8,
        ),
        Expanded(
          flex: flex,
          child: Container(
            height: 1,
            color: mainColor,
          ),
        ),
        Spacer(
          flex: 3,
        ),
        if (isViewAll)
          HoverEffectText(
            onTap: onTap!,
            text: 'View all ~~>',
            color: Colors.white,
          ),
      ],
    );
  }
}
