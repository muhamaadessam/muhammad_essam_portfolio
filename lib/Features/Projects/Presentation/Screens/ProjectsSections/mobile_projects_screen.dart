import 'package:flutter/material.dart';

import '../../../../../Core/components/Drawer/drawer.dart';
import '../../../../AppBar/mobile_app_bar.dart';
import '../../../../Footer/mobile_footer_section.dart';
import '../projects_section.dart';

class MobileProjectsScreen extends StatelessWidget {
  const MobileProjectsScreen({super.key});

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
                  MobileAppBar(),
                  ProjectsSection(
                    inHome: false,
                  ),
                  // MobileAboutMeSection(inHome: false,),
                  // MobileSkillsSection(inHome: false,),
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
