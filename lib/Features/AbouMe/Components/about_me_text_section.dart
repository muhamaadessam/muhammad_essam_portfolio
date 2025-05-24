import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:muhammad_essam_portfolio/Core/components/SheardComponents/box_widget.dart';
import 'package:muhammad_essam_portfolio/Features/AbouMe/Components/cv_download_button.dart';

import '../../../Core/constants/colors.dart';
import '../../../Core/constants/text.dart';
import '../../../routes/routes.dart';

class AboutMeTextSection extends StatelessWidget {
  const AboutMeTextSection({
    super.key,
  });

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
        Row(
          spacing: 32,
          children: [
            InkWell(
              onTap: () {
                context.go(Routes.aboutMeScreen);
              },
              child: BoxWidget(
                child: TextBody16(
                  'Read more ->',
                  color: Colors.white,
                ),
                color: mainColor,
              ),
            ),
            CvDownloadButton(),
          ],
        )
      ],
    );
  }
}
