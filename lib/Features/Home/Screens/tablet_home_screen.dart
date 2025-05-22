import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Features/AbouMe/tablet_about_me_section.dart';

import '../../AppBar/tablet_app_bar.dart';
import '../../Contacts/tablet_contacts_section.dart';
import '../../Footer/tablet_footer_section.dart';
import '../../Profile/Screens/web_profile_section.dart';
import '../../Projects/Presentation/Screens/projects_section.dart';
import '../../Skills/Sections/tablet_skills_section.dart';

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
                  TabletAppBar(),
                  WebProfileSection(),
                  ProjectsSection(),
                  TabletSkillsSection(),
                  TabletAboutMeSection(),
                  TabletContactsSection(),
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
