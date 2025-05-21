import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/res/assets.dart';

import '../../constants/colors.dart';

class LeftSideWidget extends StatelessWidget {
  const LeftSideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Take full available height
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: 100,
                width: 2,
                color: grayColor,
              ),
              const SizedBox(height: 20),
              Image.asset(
                Assets.github,
                width: 32,
              ),
              const SizedBox(height: 20),
              Image.asset(
                Assets.linkedin,
                width: 24,
                color: grayColor,
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                Assets.dots,
                height: 100,
              ),
              const SizedBox(height: 40),
              Image.asset(
                Assets.rectangle,
                height: 100,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
