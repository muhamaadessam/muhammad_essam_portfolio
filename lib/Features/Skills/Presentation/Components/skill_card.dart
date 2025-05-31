import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Features/Skills/Domain/Entities/skill_entity.dart';

import '../../../../Core/constants/colors.dart';
import '../../../../Core/constants/text.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({
    super.key,
    required this.skill,
  });

  final SkillEntity skill;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      width: 270,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextBody16(
              skill.title,
              color: Colors.white,
            ),
          ),
          Container(
            height: 1,
            color: grayColor,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: List.generate(
                skill.skills.length,
                (index) => TextBody16(
                  '* ${skill.skills[index]}',
                  color: grayColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
