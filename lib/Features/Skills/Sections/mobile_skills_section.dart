import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Features/Skills/skill_card.dart';
import 'package:muhammad_essam_portfolio/res/assets.dart';

import '../../../Core/components/SheardComponents/hash_head_section.dart';

class MobileSkillsSection extends StatelessWidget {
  const MobileSkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        HashHeadSection(
          text: 'skills',
          flex: 1,
        ),
        Column(
          spacing: 16,
          children: [
            Wrap(
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Image.asset(
                Assets.skillsImage,
                height: 300,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
