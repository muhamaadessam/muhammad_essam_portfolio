import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Features/Projecte/projects_section.dart';
import 'package:muhammad_essam_portfolio/Features/Skills/skills_section.dart';

import '../../../Core/components/SheardComponents/custom_app_bar.dart';
import '../../../Core/components/SheardComponents/footer_section.dart';
import '../../../Core/constants/colors.dart';
import '../../AbouMe/about_me_section.dart';
import '../../Contacts/contacts_section.dart';
import '../../Profile/Screens/profile_section.dart';

class CenterHomeSideWidget extends StatelessWidget {
  const CenterHomeSideWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        mainAxisSize: MainAxisSize.min, // Important for scroll views
        spacing: 96,
        children: [
          CustomAppBar(),
          ProfileSection(),
          ProjectsSection(),
          SkillsSection(),
          AboutMeSection(),
          ContactsSection(),
          FooterSection(),
        ],
      ),
    );
  }
}
