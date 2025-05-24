import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/res/assets.dart';

import '../../constants/colors.dart';
import '../../constants/url_launcher.dart';
import '../CustomWidgets/icon_link.dart';

class LeftSideWidget extends StatelessWidget {
  const LeftSideWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Column(
        children: [
          Column(
            spacing: 8,
            children: [
              Container(
                height: 100,
                width: 2,
                color: grayColor,
              ),
              IconLink(
                name: 'github',
                icon: Assets.github,
                url: Links.github,
              ),
              IconLink(
                name: 'linkedin',
                icon: Assets.linkedin,
                url: Links.linkedIn,
              ),
            ],
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
          Image.asset(
            Assets.rectangle,
            height: 100,
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
