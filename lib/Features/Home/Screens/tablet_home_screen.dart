import 'package:flutter/material.dart';

import '../../../routes/routes.dart';
import '../../AboutMe/presentation/Components/HomeSections/tablet_about_me_section.dart';
import '../../AppBar/custom_app_bar.dart';
import '../../Contacts/Presentation/Components/HomeSections/tablet_contacts_section.dart';
import '../../Footer/tablet_footer_section.dart';
import '../../Profile/Presentation/Screens/web_profile_section.dart';
import '../../Projects/Presentation/Screens/projects_section.dart';
import '../../Skills/Presentation/Components/Sections/tablet_skills_section.dart';

class TabletHomeScreen extends StatelessWidget {
  const TabletHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min, // Important for scroll views
                spacing: 64,
                children: [
                  CustomAppBar(
                    currentRoute: Routes.homeScreen,
                  ),
                  WebProfileSection(),
                  ProjectsSection(inHome: true),
                  TabletSkillsSection(
                    inHome: true,
                  ),
                  TabletAboutMeSection(
                    inHome: true,
                  ),
                  TabletContactsSection(
                    inHome: true,
                  ),
                ],
              ),
            ),
            TabletFooterSection(),
          ],
        ),
      ),
    );
  }
}
