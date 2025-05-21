import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/constants/colors.dart';

import '../../Core/constants/text.dart';
import '../../res/assets.dart';
import 'hash_head_section.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

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
              child: Column(
                spacing: 32,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextBody16(
                    'Hello, i’m Elias!',
                    color: grayColor,
                  ),
                  TextBody16(
                    'I’m a self-taught front-end developer based in Kyiv, Ukraine. I can develop responsive websites from scratch and raise them into modern user-friendly web experiences.',
                    color: grayColor,
                    maxLines: 6,
                  ),
                  TextBody16(
                    'Transforming my creativity and knowledge into a websites has been my passion for over a year. I have been helping various clients to establish their presence online. I always strive to learn about the newest technologies and frameworks.',
                    color: grayColor,
                    maxLines: 10,
                  ),
                  Row(
                    spacing: 32,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: mainColor),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextBody16(
                            'Read more ->',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: mainColor),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextBody16(
                            'Download CV',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
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
