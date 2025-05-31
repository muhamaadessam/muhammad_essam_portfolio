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
        children: [
          SizedBox(
            height: 32,
          ),
          CustomAppBar(
            currentRoute: Routes.worksScreen,
          ),
          SizedBox(
            height: 96,
          ),
          ProjectsSection(
            inHome: false,
          ),
        ],
      ),
    );
  }
}
