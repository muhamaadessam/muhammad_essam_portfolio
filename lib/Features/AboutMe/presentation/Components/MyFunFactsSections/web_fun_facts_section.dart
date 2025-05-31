import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/components/SheardComponents/text_with_hash.dart';

import '../../../../../res/assets.dart';
import 'fun_fact_widget.dart';

class WebFunFactsSection extends StatelessWidget {
  const WebFunFactsSection({super.key});

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
        Row(
          spacing: 64,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: FunFactWidget(),
            ),
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
