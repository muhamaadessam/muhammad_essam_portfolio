import 'package:flutter/material.dart';

import '../../Core/components/SheardComponents/hash_head_section.dart';
import '../../res/assets.dart';
import 'Components/about_me_text_section.dart';

class MobileAboutMeSection extends StatelessWidget {
  const MobileAboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        HashHeadSection(
          text: 'about-me',
          flex: 2,
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
