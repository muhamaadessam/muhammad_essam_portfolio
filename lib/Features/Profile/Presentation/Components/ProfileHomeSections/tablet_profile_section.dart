import 'package:flutter/material.dart';

import '../ProfileSections/profile_images_section.dart';
import '../ProfileSections/profile_text_section.dart';

class MobileProfileSection extends StatelessWidget {
  const MobileProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 32,
      children: [
        ProfileTextSection(),
        ProfileImagesSection(),
      ],
    );
  }
}
