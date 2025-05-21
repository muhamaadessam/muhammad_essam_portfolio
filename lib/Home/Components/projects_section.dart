import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/constants/colors.dart';
import 'package:muhammad_essam_portfolio/Home/Components/project_card.dart';
import 'package:muhammad_essam_portfolio/Home/Components/text_with_hash.dart';
import 'package:muhammad_essam_portfolio/core/constants/text.dart';

import 'hash_head_section.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 32,
      children: [
        HashHeadSection(text: 'projects', isViewAll: true,flex: 4,),
        Wrap(
          spacing: 32,
          runSpacing: 32,
          children: [
            ProjectCard(),
            ProjectCard(),
            ProjectCard(),
          ],
        ),
      ],
    );
  }
}
