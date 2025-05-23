import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/res/assets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/colors.dart';

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
            spacing: 4,
            children: [
              Container(
                height: 100,
                width: 2,
                color: grayColor,
              ),
              InkWell(
                onTap: () async {
                  final Uri _url = Uri.parse('https://github.com/muhamaadessam');

                  if (!await launchUrl(_url)) {
                    throw Exception('Could not launch $_url');
                  }
                },
                child: Image.asset(
                  Assets.github,
                  width: 32,
                  semanticLabel: 'github',
                ),
              ),
              InkWell(
                onTap: () async {
                  final Uri _url = Uri.parse('https://www.linkedin.com/in/muhammadessam159');

                  if (!await launchUrl(_url)) {
                    throw Exception('Could not launch $_url');
                  }
                },
                child: Image.asset(
                  Assets.linkedin,
                  width: 24,
                  color: grayColor,
                  semanticLabel: 'linkedin',
                ),
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
