import 'package:flutter/material.dart';

import '../../Core/components/SheardComponents/hash_head_section.dart';
import '../../res/assets.dart';
import 'Components/about_me_text_section.dart';

class WebAboutMeSection extends StatelessWidget {
  const WebAboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 32,
      children: [
        HashHeadSection(
          text: 'about-me',
          flex: 2,
        ),
        Row(
          spacing: 64,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: AboutMeTextSection(),
            ),
            Image.asset(
              Assets.aboutMeImage,
              height: 400,
            ),
          ],
        ),
      ],
    );
  }
}
