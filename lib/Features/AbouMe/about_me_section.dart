import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/components/app_responsive.dart';

import '../../Core/components/SheardComponents/hash_head_section.dart';
import '../../res/assets.dart';
import 'Components/about_me_text_section.dart';

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
        AppResponsive(
          mobile: Column(
            spacing: 16,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: AboutMeTextSection(),
              ),
              Image.asset(
                Assets.aboutMeImage,
                height: 300,
              ),
            ],
          ),
          tablet: Row(
            spacing: 32,
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
          desktop: Row(
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
        ),
      ],
    );
  }
}
