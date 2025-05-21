import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Home/Components/profile_section.dart';
import 'package:muhammad_essam_portfolio/Home/Components/projects_section.dart';
import 'package:muhammad_essam_portfolio/Home/Components/skills_section.dart';

import '../../Core/constants/colors.dart';
import '../../Core/constants/text.dart';
import '../../res/assets.dart';
import 'about_me_section.dart';
import 'contacts_section.dart';
import 'custom_app_bar.dart';
import 'footer_section.dart';

class CenterHomeSideWidget extends StatelessWidget {
  const CenterHomeSideWidget({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      width: width,
      child: Column(
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
