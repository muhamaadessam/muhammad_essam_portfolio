import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/components/app_responsive.dart';

import '../Components/profile_images_section.dart';
import '../Components/profile_text_section.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppResponsive(
      mobile: Column(
        spacing: 32,
        children: [
          Expanded(
            child: ProfileTextSection(),
          ),
          Expanded(
            child: ProfileImagesSection(),
          ),
        ],
      ),
      tablet: Row(
        spacing: 32,
        children: [
          Expanded(
            child: ProfileTextSection(),
          ),
          Expanded(
            child: ProfileImagesSection(),
          ),
        ],
      ),
      desktop: Row(
        spacing: 32,
        children: [
          Expanded(
            child: ProfileTextSection(),
          ),
          Expanded(
            child: ProfileImagesSection(),
          ),
        ],
      ),
    );
  }
}
