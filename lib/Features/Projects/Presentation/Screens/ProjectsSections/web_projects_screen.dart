import 'package:flutter/material.dart';

import '../../../../../Core/components/SheardComponents/web_screen.dart';
import '../../../../../routes/routes.dart';
import '../../../../AppBar/custom_app_bar.dart';
import '../projects_section.dart';

class WebProjectsScreen extends StatelessWidget {
  const WebProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WebScreen(
      child: Column(
        mainAxisSize: MainAxisSize.min, // Important for scroll views
        spacing: 96,
        children: [
          CustomAppBar(
            currentRoute: Routes.worksScreen,
          ),
          ProjectsSection(
            inHome: false,
          ),
          // WebAboutMeSection(inHome: false,),
          // WebSkillsSection(inHome: false,),
        ],
      ),
    );
  }
}
