import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muhammad_essam_portfolio/res/assets.dart';

import '../../../../../Core/components/SheardComponents/hash_head_section.dart';
import '../../controller/skills/cubit.dart';
import '../../controller/skills/state.dart';
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
        BlocBuilder<SkillsCubit, SkillsState>(
          builder: (context, state) {
            if (state.status == SkillsStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            }
            return Row(
              spacing: 64,
              children: [
                if (inHome)
                  Image.asset(
                    Assets.skillsImage,
                    height: 300,
                  ),
                Expanded(
                  flex: 3,
                  child: Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: List.generate(
                      state.skills.length,
                      (index) => SkillCard(
                        skill: state.skills[index],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
