import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/constants/colors.dart';
import 'package:muhammad_essam_portfolio/Core/constants/text.dart';

import '../../res/assets.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 50,
      children: [
        Container(
          height: 1,
          color: grayColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextBody16(
                  'Muhammad Essam',
                  color: Colors.white,
                ),
                TextBody16(
                  'Flutter Developer',
                  color: grayColor,
                ),
              ],
            ),
            Column(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextBody16(
                  'Media',
                  color: Colors.white,
                ),
                Row(
                  spacing: 8,
                  children: [
                    Image.asset(
                      Assets.linkedin,
                      height: 24,
                      color: grayColor,
                    ),
                    Image.asset(
                      Assets.github,
                      height: 24,
                    ),
                    Image.asset(
                      Assets.linkedin,
                      height: 24,
                      color: grayColor,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        TextBody16(
          '© Copyright 2022. Made by Muhammad Essam',
          color: grayColor,
        ),
        SizedBox(),
      ],
    );
  }
}
