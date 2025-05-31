import 'package:flutter/material.dart';

import '../../../Core/components/Drawer/drawer.dart';
import '../../../routes/routes.dart';
import '../../AboutMe/presentation/Components/HomeSections/mobile_about_me_section.dart';
import '../../AppBar/mobile_app_bar.dart';
import '../../Contacts/Presentation/Components/HomeSections/mobile_contacts_section.dart';
import '../../Footer/mobile_footer_section.dart';
import '../../Profile/Presentation/Components/ProfileHomeSections/tablet_profile_section.dart';
import '../../Projects/Presentation/Screens/projects_section.dart';
import '../../Skills/Presentation/Components/Sections/mobile_skills_section.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min, // Important for scroll views
                spacing: 32,
                children: [
                  MobileAppBar(
                    currentRoute: Routes.homeScreen,
                  ),
                  MobileProfileSection(),
                  ProjectsSection(inHome: true),
                  MobileSkillsSection(
                    inHome: true,
                  ),
                  MobileAboutMeSection(
                    inHome: true,
                  ),
                  MobileContactsSection(
                    inHome: true,
                  ),
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
