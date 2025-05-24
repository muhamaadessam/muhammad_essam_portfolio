import 'package:flutter/material.dart';

import '../../../Core/components/SheardComponents/web_screen.dart';
import '../../../routes/routes.dart';
import '../../AbouMe/Components/HomeSections/web_about_me_section.dart';
import '../../AppBar/custom_app_bar.dart';
import '../../Contacts/HomeSections/web_contacts_section.dart';
import '../../Profile/Screens/web_profile_section.dart';
import '../../Projects/Presentation/Screens/projects_section.dart';
import '../../Skills/Sections/web_skills_section.dart';

class WebHomeScreen extends StatelessWidget {
  const WebHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WebScreen(
      child: Column(
        mainAxisSize: MainAxisSize.min, // Important for scroll views
        spacing: 96,
        children: [
          CustomAppBar(
            currentRoute: Routes.homeScreen,
          ),
          WebProfileSection(),
          ProjectsSection(inHome: true),
          WebSkillsSection(
            inHome: true,
          ),
          WebAboutMeSection(
            inHome: true,
          ),
          WebContactsSection(
            inHome: true,
          ),
        ],
      ),
    );
  }
}
