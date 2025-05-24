import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/constants/colors.dart';
import 'package:muhammad_essam_portfolio/Core/constants/text.dart';

import '../../Core/components/CustomWidgets/icon_link.dart';
import '../../Core/constants/url_launcher.dart';
import '../../res/assets.dart';

class TabletFooterSection extends StatelessWidget {
  const TabletFooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: [
        Container(
          height: 1,
          color: grayColor,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            spacing: 24,
            children: [
              footerSection(),
              TextBody16(
                '©Copyright 2025. Made by Muhammad Essam',
                color: grayColor,
                fontSize: 12,
              ),
            ],
          ),
        ),
        SizedBox(),
      ],
    );
  }

  footerSection() {
    return Row(
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
                IconLink(
                  name: 'linkedin',
                  icon: Assets.linkedin,
                  url: Links.linkedIn,
                ),
                IconLink(
                  name: 'github',
                  icon: Assets.github,
                  url: Links.github,
                ),
                IconLink(
                  name: 'facebook',
                  icon: Assets.facebook,
                  url: Links.facebook,
                ),
                IconLink(
                  name: 'whatsapp',
                  icon: Assets.whatsapp,
                  url: Links.whatsapp,
                ),
                IconLink(
                  name: 'instagram',
                  icon: Assets.instagram,
                  url: Links.instagram,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
