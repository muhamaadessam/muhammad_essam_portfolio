import 'package:flutter/material.dart';

import '../../../../../routes/routes.dart';
import '../../../../AppBar/custom_app_bar.dart';
import '../../../../Footer/tablet_footer_section.dart';
import '../../../../Skills/Presentation/Components/Sections/tablet_skills_section.dart';
import '../HomeSections/tablet_about_me_section.dart';
import '../MyFunFactsSections/tablet_fun_fact_section.dart';

class TabletAboutMeScreen extends StatelessWidget {
  const TabletAboutMeScreen({super.key});

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
                    currentRoute: Routes.aboutMeScreen,
                  ),
                  TabletAboutMeSection(
                    inHome: false,
                  ),
                  TabletSkillsSection(
                    inHome: false,
                  ),
                  TabletFunFactSection(),
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
