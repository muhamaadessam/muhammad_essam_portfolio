import 'package:flutter/material.dart';

import '../../Components/profile_images_section.dart';
import '../../Components/profile_text_section.dart';

class WebProfileSection extends StatelessWidget {
  const WebProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 32,
      children: [
        Expanded(
          child: ProfileTextSection(),
        ),
        Expanded(
          child: ProfileImagesSection(),
        ),
      ],
    );
  }
}
