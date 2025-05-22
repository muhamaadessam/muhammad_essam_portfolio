import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Features/Projecte/Screens/projects_section.dart';

import '../../AbouMe/web_about_me_section.dart';
import '../../AppBar/custom_app_bar.dart';
import '../../Contacts/web_contacts_section.dart';
import '../../Profile/Screens/web_profile_section.dart';
import '../../Skills/Sections/web_skills_section.dart';

class CenterHomeSideWidget extends StatelessWidget {
  const CenterHomeSideWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // Important for scroll views
      spacing: 96,
      children: [
        CustomAppBar(),
        WebProfileSection(),
        ProjectsSection(),
        WebSkillsSection(),
        WebAboutMeSection(),
        WebContactsSection(),
      ],
    );
  }
}
