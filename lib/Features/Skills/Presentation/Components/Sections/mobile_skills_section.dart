import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muhammad_essam_portfolio/Features/Skills/Presentation/controller/skills/cubit.dart';
import 'package:muhammad_essam_portfolio/res/assets.dart';

import '../../../../../Core/components/SheardComponents/hash_head_section.dart';
import '../../controller/skills/state.dart';
import '../skill_card.dart';

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
        BlocBuilder<SkillsCubit, SkillsState>(
          builder: (context, state) {
            if (state.status == SkillsStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            }
            return Column(
              spacing: 16,
              children: [
                Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: List.generate(
                    state.skills.length,
                    (index) => SkillCard(
                      skill: state.skills[index],
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
          },
        ),
        // FutureBuilder(
        //     future: loadSkills(),
        //     builder: (context, snapshot) {
        //       if (snapshot.connectionState == ConnectionState.waiting) {
        //         return const Center(child: CircularProgressIndicator());
        //       }
        //       if (snapshot.hasError) {
        //         return Center(child: Text(snapshot.error.toString()));
        //       }
        //
        //       final skills = snapshot.data as List<SkillModel>;
        //       return Column(
        //         spacing: 16,
        //         children: [
        //           Wrap(
        //             spacing: 16,
        //             runSpacing: 16,
        //             children: List.generate(
        //               skills.length,
        //               (index) => SkillCard(
        //                 skill: skills[index],
        //               ),
        //             ),
        //           ),
        //           if (inHome)
        //             Padding(
        //               padding: const EdgeInsets.symmetric(horizontal: 16.0),
        //               child: Image.asset(
        //                 Assets.skillsImage,
        //                 height: 300,
        //               ),
        //             ),
        //         ],
        //       );
        //     }),
      ],
    );
  }
}
