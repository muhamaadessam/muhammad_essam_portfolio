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
        children: [
          Spacer(
            flex: 1,
          ),
          Image.asset(
            Assets.dots,
            height: 100,
          ),
          Spacer(
            flex: 3,
          ),
          Image.asset(
            Assets.rectangle,
            height: 100,
          ),
          Spacer(
            flex: 1,
          ),
          Image.asset(
            Assets.dots,
            height: 100,
          ),
          Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}
