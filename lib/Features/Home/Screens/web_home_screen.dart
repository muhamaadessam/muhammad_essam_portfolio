import 'package:flutter/material.dart';

import '../../../Core/components/SheardComponents/web_screen.dart';
import '../../../routes/routes.dart';
import '../../AboutMe/presentation/Components/HomeSections/web_about_me_section.dart';
import '../../AppBar/custom_app_bar.dart';
import '../../Contacts/Presentation/Components/HomeSections/web_contacts_section.dart';
import '../../Profile/Presentation/Components/ProfileHomeSections/web_profile_section.dart';
import '../../Projects/Presentation/Screens/projects_section.dart';
import '../../Skills/Presentation/Components/Sections/web_skills_section.dart';

class WebHomeScreen extends StatelessWidget {
  const WebHomeScreen({super.key});

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
            currentRoute: Routes.homeScreen,
          ),
          SizedBox(
            height: 96,
          ),
          WebProfileSection(),
          SizedBox(
            height: 96,
          ),
          ProjectsSection(inHome: true),
          SizedBox(
            height: 96,
          ),
          WebSkillsSection(
            inHome: true,
          ),
          SizedBox(
            height: 96,
          ),
          WebAboutMeSection(
            inHome: true,
          ),
          SizedBox(
            height: 96,
          ),
          WebContactsSection(
            inHome: true,
          ),
        ],
      ),
    );
  }
}
