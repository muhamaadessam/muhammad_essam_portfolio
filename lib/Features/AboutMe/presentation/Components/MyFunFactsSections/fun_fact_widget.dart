import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/components/SheardComponents/box_widget.dart';
import '../../../../../Core/constants/colors.dart';
import '../../../../../Core/constants/text.dart';
import '../../controller/cubit.dart';
import '../../controller/state.dart';

class FunFactWidget extends StatelessWidget {
  const FunFactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AboutMeCubit, AboutMeState>(
      builder: (context, state) {
        if (state.status != AboutMeStatus.loaded) {
          return const Center(child: CircularProgressIndicator());
        }
        return Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            ...List.generate(
              state.funFacts!.facts.length,
              (index) => BoxWidget(
                color: grayColor,
                child: TextBody16(
                  state.funFacts!.facts[index],
                  color: grayColor,
                  maxLines: 15,
                ),
              ),
            ),
            // BoxWidget(
            //   color: grayColor,
            //   child: TextBody16(
            //     'I’m interested in freelance opportunities.',
            //     color: grayColor,
            //     maxLines: 15,
            //   ),
            // ),
          ],
        );
      },
    );
  }
}
