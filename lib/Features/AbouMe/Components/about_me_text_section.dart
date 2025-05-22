import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/components/SheardComponents/box_widget.dart';

import '../../../Core/constants/colors.dart';
import '../../../Core/constants/text.dart';

class AboutMeTextSection extends StatelessWidget {
  const AboutMeTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 32,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextBody16(
          'Hello, i’m Muhammad Essam!',
          color: grayColor,
        ),
        TextBody16(
          'Mid-level Flutter Developer with hands-on experience in building scalable and high-performance mobile applications. Proficient in state management solutions like Bloc, Cubit and GetX, with a strong background in Firebase integration. Seeking a full-time role in a dynamic team where I can leverage my leadership skills, contribute to impactful projects, and continue growing as a developer.',
          color: grayColor,
          maxLines: 100,
        ),
        // TextBody16(
        //   'Transforming my creativity and knowledge into a websites has been my passion for over a year. I have been helping various clients to establish their presence online. I always strive to learn about the newest technologies and frameworks.',
        //   color: grayColor,
        //   maxLines: 100,
        // ),
        Row(
          spacing: 32,
          children: [
            BoxWidget(
              child: TextBody16(
                'Read more ->',
                color: Colors.white,
              ),
              color: mainColor,
            ),
            BoxWidget(
              child: TextBody16(
                'Download CV',
                color: Colors.white,
              ),
              color: mainColor,
            )
          ],
        )
      ],
    );
  }
}
