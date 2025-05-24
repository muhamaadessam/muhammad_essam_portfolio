import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Features/Skills/skill_card.dart';
import 'package:muhammad_essam_portfolio/res/assets.dart';

import '../../../Core/components/SheardComponents/hash_head_section.dart';
import '../Data/load_skills.dart';
import '../Data/skill_model.dart';

class MobileSkillsSection extends StatelessWidget {
  const MobileSkillsSection({super.key, required this.inHome});

  final bool inHome;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        if (inHome)
          HashHeadSection(
            text: 'skills',
            flex: 1,
          ),
        FutureBuilder(
            future: loadSkills(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Center(child: Text(snapshot.error.toString()));
              }

              final skills = snapshot.data as List<SkillModel>;
              return Column(
                spacing: 16,
                children: [
                  Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: List.generate(
                      skills.length,
                      (index) => SkillCard(
                        skill: skills[index],
                      ),
                    ),
                  ),
                  if (inHome)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Image.asset(
                        Assets.skillsImage,
                        height: 300,
                      ),
                    ),
                ],
              );
            }),
      ],
    );
  }
}
