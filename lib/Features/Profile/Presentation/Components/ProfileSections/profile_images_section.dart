import 'package:flutter/material.dart';

import '../../../../../Core/Network/Local/cache_helper.dart';
import '../../../../../Core/Network/Local/constant.dart';
import '../../../../../Core/constants/colors.dart';
import '../../../../../res/assets.dart';

class ProfileImagesSection extends StatelessWidget {
  const ProfileImagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 80,
              left: 0,
              child: Image.asset(
                Assets.essamLogoBorder,
                width: 140,
              ),
            ),
            Image.network(
              CacheHelper.get(key: AppStorage.image),
              width: 350,
            ),
            Positioned(
              bottom: 80,
              right: 0,
              child: Image.asset(
                Assets.dots,
                width: 80,
              ),
            ),
            SizedBox(
              width: 400,
            ),
          ],
        ),
        Container(
          width: 380,
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
