import 'package:flutter/material.dart';

import '../../../../../Core/components/SheardComponents/web_screen.dart';
import '../../../../../routes/routes.dart';
import '../../../../AppBar/custom_app_bar.dart';
import '../../../../Skills/Presentation/Components/Sections/web_skills_section.dart';
import '../HomeSections/web_about_me_section.dart';
import '../MyFunFactsSections/web_fun_facts_section.dart';

class WebAboutMeScreen extends StatelessWidget {
  const WebAboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WebScreen(
      child: Column(
        mainAxisSize: MainAxisSize.min, // Important for scroll views
        children: [
          SizedBox(
            height: 32,
          ),
          CustomAppBar(
            currentRoute: Routes.aboutMeScreen,
          ),
          SizedBox(
            height: 96,
          ),
          WebAboutMeSection(
            inHome: false,
          ),
          SizedBox(
            height: 96,
          ),
          WebSkillsSection(
            inHome: false,
          ),
          SizedBox(
            height: 96,
          ),
          WebFunFactsSection(),
        ],
      ),
    );
  }
}
