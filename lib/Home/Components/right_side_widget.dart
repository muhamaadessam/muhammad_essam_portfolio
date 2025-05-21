import 'package:flutter/material.dart';

import '../../Core/constants/colors.dart';
import '../../res/assets.dart';

class RightSideWidget extends StatelessWidget {
  const RightSideWidget({super.key, required this.width, });
final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        children: [
          Spacer(flex: 1,),
          Image.asset(
            Assets.dots,
            height: 100,
          ),
          Spacer(flex: 3,),
          Image.asset(
            Assets.rectangle,
            height: 100,
          ),
          Spacer(flex: 1,),
          Image.asset(
            Assets.dots,
            height: 100,
          ),
          Spacer(flex: 3,),
        ],
      ),
    );
  }
}
