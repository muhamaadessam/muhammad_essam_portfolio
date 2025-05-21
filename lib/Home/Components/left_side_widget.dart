import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/res/assets.dart';

import '../../Core/constants/colors.dart';

class LeftSideWidget extends StatelessWidget {
  const LeftSideWidget({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        children: [
          Column(
            spacing: 4,
            children: [
              Container(
                height: 100,
                width: 2,
                color: grayColor,
              ),
              Image.asset(
                Assets.github,
                width: 32,
              ),
              Image.asset(
                Assets.linkedin,
                width: 24,
                color: grayColor,
              ),
            ],
          ),
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
        ],
      ),
    );
  }
}
