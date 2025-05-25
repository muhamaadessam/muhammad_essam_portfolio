import 'package:flutter/material.dart';

import '../../../res/assets.dart';

class RightSideWidget extends StatelessWidget {
  const RightSideWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Spacer(flex: 1),
          Image.asset(
            Assets.rightRectangle,
            width: 50,
          ),
          Spacer(flex: 1),
          Image.asset(
            Assets.dots,
            width: 70,
          ),
          Spacer(flex: 1),
          Image.asset(
            Assets.rightRectangle,
            width: 70,
          ),
          Spacer(flex: 1),
          Image.asset(
            Assets.dots,
            width: 50,
          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
