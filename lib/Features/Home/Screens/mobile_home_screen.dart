import 'package:flutter/material.dart';

import '../../AbouMe/mobile_about_me_section.dart';
import '../../AppBar/mobile_app_bar.dart';
import '../../Contacts/mobile_contacts_section.dart';
import '../../Footer/mobile_footer_section.dart';
import '../../Profile/Screens/tablet_profile_section.dart';
import '../../Projecte/Screens/projects_section.dart';
import '../../Skills/Sections/mobile_skills_section.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min, // Important for scroll views
                spacing: 32,
                children: [
                  MobileAppBar(),
                  MobileProfileSection(),
                  ProjectsSection(),
                  MobileSkillsSection(),
                  MobileAboutMeSection(),
                  MobileContactsSection(),
                ],
              ),
            ),
            MobileFooterSection(),
          ],
        ),
      ),
    );
  }
}
