import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Features/Skills/skill_card.dart';
import 'package:muhammad_essam_portfolio/res/assets.dart';

import '../../../Core/components/SheardComponents/hash_head_section.dart';

class WebSkillsSection extends StatelessWidget {
  const WebSkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 32,
      children: [
        HashHeadSection(
          text: 'skills',
          flex: 1,
        ),
        Row(
          spacing: 64,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                Assets.skillsImage,
                width: double.infinity,
              ),
            ),
            Expanded(
              flex: 3,
              child: Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  SkillCard(
                    isFirst: true,
                  ),
                  SkillCard(),
                  SkillCard(),
                  SkillCard(),
                  SkillCard(),
                  SkillCard(),
                  SkillCard(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
