import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/components/app_responsive.dart';
import 'package:muhammad_essam_portfolio/Features/Skills/skill_card.dart';
import 'package:muhammad_essam_portfolio/res/assets.dart';

import '../../Core/components/SheardComponents/hash_head_section.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 32,
      children: [
        HashHeadSection(
          text: 'skills',
          flex: 1,
        ),
        AppResponsive(
          mobile: Column(
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
          tablet: Row(
            spacing: 32,
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
          desktop: Row(
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
        ),
        // Row(
        //   spacing: 64,
        //   children: [
        //     Expanded(
        //       flex: 2,
        //       child: Image.asset(
        //         Assets.skillsImage,
        //         width: double.infinity,
        //       ),
        //     ),
        //     Expanded(
        //       flex: 3,
        //       child: Wrap(
        //         spacing: 16,
        //         runSpacing: 16,
        //         children: [
        //           SkillCard(isFirst: true,),
        //           SkillCard(),
        //           SkillCard(),
        //           SkillCard(),
        //           SkillCard(),
        //           SkillCard(),
        //           SkillCard(),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
