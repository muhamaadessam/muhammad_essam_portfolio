import 'package:flutter/material.dart';

import '../../../../Core/components/Drawer/drawer.dart';
import '../../../../routes/routes.dart';
import '../../../AppBar/mobile_app_bar.dart';
import '../../../Footer/mobile_footer_section.dart';
import '../../../Skills/Sections/mobile_skills_section.dart';
import '../HomeSections/mobile_about_me_section.dart';

class MobileAboutMeScreen extends StatelessWidget {
  const MobileAboutMeScreen({super.key});

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
                    currentRoute: Routes.aboutMeScreen,
                  ),
                  MobileAboutMeSection(
                    inHome: false,
                  ),
                  MobileSkillsSection(
                    inHome: false,
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
