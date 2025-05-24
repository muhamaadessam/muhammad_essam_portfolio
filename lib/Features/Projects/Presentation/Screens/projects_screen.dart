import 'package:flutter/material.dart';

import '../../../../Core/components/app_responsive.dart';
import 'ProjectsSections/mobile_projects_screen.dart';
import 'ProjectsSections/tablet_projects_screen.dart';
import 'ProjectsSections/web_projects_screen.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppResponsive(
      mobile: MobileProjectsScreen(),
      tablet: TabletProjectsScreen(),
      desktop: WebProjectsScreen(),
    );
  }
}
