import 'package:flutter/material.dart';

import '../../Core/constants/colors.dart';
import '../../Core/constants/text.dart';
import '../../res/assets.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 32,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Muhammad Essam is a',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.white,
                    fontFamily: 'FiraCode-Regular',
                  ),
                  children: [
                    TextSpan(
                      text: ' Flutter Developer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: mainColor,
                        fontFamily: 'FiraCode-Regular',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              TextBody16(
                'He crafts responsive websites where technologies meet creativity',
                color: grayColor,
                maxLines: 2,
              ),
              SizedBox(height: 24),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: mainColor,
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                child: TextBody16(
                  'Contact me!!',
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
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
                        text: 'Currently working on',
                        style: TextStyle(
                          color: grayColor,
                          fontSize: 16,
                          fontFamily: 'FiraCode-Regular',
                        ),
                        children: [
                          TextSpan(
                            text: ' Portfolio',
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
          ),
        ),
      ],
    );
  }
}
