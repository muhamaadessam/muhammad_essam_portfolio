import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/res/assets.dart';

import '../../../../../Core/components/SheardComponents/hash_head_section.dart';
import '../../../Data/load_skills.dart';
import '../../../Data/skill_model.dart';
import '../skill_card.dart';

class TabletSkillsSection extends StatelessWidget {
  const TabletSkillsSection({super.key, required this.inHome});

  final bool inHome;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: [
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
              return Row(
                spacing: 64,
                children: [
                  if (inHome)
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
                      children: List.generate(
                        skills.length,
                        (index) => SkillCard(
                          skill: skills[index],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
      ],
    );
  }
}
