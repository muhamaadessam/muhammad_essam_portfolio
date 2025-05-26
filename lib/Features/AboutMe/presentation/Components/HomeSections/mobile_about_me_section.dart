import 'package:flutter/material.dart';

import '../../../../../Core/components/SheardComponents/hash_head_section.dart';
import '../../../../../Core/components/SheardComponents/text_with_slash.dart';
import '../../../../../res/assets.dart';
import '../about_me_text_section.dart';

class MobileAboutMeSection extends StatelessWidget {
  const MobileAboutMeSection({super.key, required this.inHome});

  final bool inHome;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        if (inHome)
          HashHeadSection(
            text: 'about-me',
            flex: 2,
          )
        else
          TextWithSlash(
            text: 'about-me',
          ),
        Column(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AboutMeTextSection(),
            Image.asset(
              Assets.aboutMeImage,
              height: 300,
            ),
          ],
        ),
      ],
    );
  }
}
