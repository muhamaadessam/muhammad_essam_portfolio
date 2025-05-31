import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:muhammad_essam_portfolio/Core/components/SheardComponents/box_widget.dart';
import 'package:muhammad_essam_portfolio/Core/components/SheardComponents/hover_effect_widget.dart';

import '../../../../../Core/components/SheardComponents/cv_download_button.dart';
import '../../../../../Core/constants/colors.dart';
import '../../../../../Core/constants/text.dart';
import '../../../../../routes/routes.dart';

class ProfileTextSection extends StatelessWidget {
  const ProfileTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: 'Muhammad Essam is a',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.white,
              fontFamily: 'FiraCode-Regular',
            ),
            children: [
              TextSpan(
                text: ' Flutter Developer',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: mainColor,
                  fontFamily: 'FiraCode-Regular',
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 32),
        TextBody16(
          'He crafts responsive websites where technologies meet creativity',
          color: grayColor,
          maxLines: 10,
        ),
        SizedBox(height: 24),
        Row(
          spacing: 32,
          children: [
            HoverEffectWidget(
              child: BoxWidget(
                child: TextBody16(
                  'Contact me!!',
                  color: Colors.white,
                ),
                color: mainColor,
              ),
              onTap: () {
                context.go(Routes.contactsScreen);
              },
            ),
            CvDownloadButton(),
          ],
        ),
      ],
    );
  }
}
