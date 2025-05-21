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
          'Hello, i’m Elias!',
          color: grayColor,
        ),
        TextBody16(
          'I’m a self-taught front-end developer based in Kyiv, Ukraine. I can develop responsive websites from scratch and raise them into modern user-friendly web experiences.',
          color: grayColor,
          maxLines: 100,
        ),
        TextBody16(
          'Transforming my creativity and knowledge into a websites has been my passion for over a year. I have been helping various clients to establish their presence online. I always strive to learn about the newest technologies and frameworks.',
          color: grayColor,
          maxLines: 100,
        ),
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
