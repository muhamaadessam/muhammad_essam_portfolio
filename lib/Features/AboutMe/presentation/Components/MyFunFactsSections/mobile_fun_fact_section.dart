import 'package:flutter/material.dart';

import '../../../../../Core/components/SheardComponents/text_with_hash.dart';
import '../../../../../res/assets.dart';
import 'fun_fact_widget.dart';

class MobileFunFactSection extends StatelessWidget {
  const MobileFunFactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 32,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWithHash(
          text: 'my-fun-facts',
        ),
        Column(
          spacing: 32,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FunFactWidget(),
            Image.asset(
              Assets.myFunFactsImage,
              height: 200,
            ),
          ],
        ),
      ],
    );
  }
}
