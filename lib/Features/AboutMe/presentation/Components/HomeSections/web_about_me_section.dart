import 'package:flutter/material.dart';

import '../../../../../Core/components/SheardComponents/hash_head_section.dart';
import '../../../../../Core/components/SheardComponents/text_with_slash.dart';
import '../../../../../res/assets.dart';
import '../about_me_text_section.dart';

class WebAboutMeSection extends StatelessWidget {
  const WebAboutMeSection({super.key, required this.inHome});

  final bool inHome;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 32,
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
