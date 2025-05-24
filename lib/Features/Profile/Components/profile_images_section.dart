import 'package:flutter/material.dart';

import '../../../Core/constants/colors.dart';
import '../../../res/assets.dart';

class ProfileImagesSection extends StatelessWidget {
  const ProfileImagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Assets.profileImage,
          height: 380,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: grayColor,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              Container(
                color: mainColor,
                width: 10,
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  text: 'Currently working at ',
                  style: TextStyle(
                    color: grayColor,
                    fontSize: 16,
                    fontFamily: 'FiraCode-Regular',
                  ),
                  children: [
                    TextSpan(
                      text: 'MyCash',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'FiraCode-Regular',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
