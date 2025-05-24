import 'package:flutter/material.dart';

import '../../../../../routes/routes.dart';
import '../../../../AppBar/custom_app_bar.dart';
import '../../../../Footer/tablet_footer_section.dart';
import '../projects_section.dart';

class TabletProjectsScreen extends StatelessWidget {
  const TabletProjectsScreen({super.key});

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
                    currentRoute: Routes.worksScreen,
                  ),
                  ProjectsSection(
                    inHome: false,
                  ),
                  // TabletAboutMeSection(inHome: false,),
                  // TabletSkillsSection(inHome: false,),
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
