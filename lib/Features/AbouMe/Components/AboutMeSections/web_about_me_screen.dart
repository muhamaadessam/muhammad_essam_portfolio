import 'package:flutter/material.dart';

import '../../../../Core/components/SheardComponents/web_screen.dart';
import '../../../../routes/routes.dart';
import '../../../AppBar/custom_app_bar.dart';
import '../../../Skills/Sections/web_skills_section.dart';
import '../HomeSections/web_about_me_section.dart';

class WebAboutMeScreen extends StatelessWidget {
  const WebAboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WebScreen(
      child: Column(
        mainAxisSize: MainAxisSize.min, // Important for scroll views
        spacing: 96,
        children: [
          CustomAppBar(
            currentRoute: Routes.aboutMeScreen,
          ),
          WebAboutMeSection(
            inHome: false,
          ),
          WebSkillsSection(
            inHome: false,
          ),
        ],
      ),
    );
  }
}
