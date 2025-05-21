import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Home/Components/text_with_hash.dart';

import '../../Core/constants/colors.dart';
import '../../Core/constants/text.dart';

class HashHeadSection extends StatelessWidget {
  const HashHeadSection({
    super.key,
    required this.text,
    this.isViewAll = false,
    this.flex = 1,
  });

  final String text;
  final bool isViewAll;
  final int flex;

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
          TextBody16(
            'View all ~~>',
            color: Colors.white,
          ),
      ],
    );
  }
}
