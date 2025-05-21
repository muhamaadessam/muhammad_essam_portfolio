import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/constants/colors.dart';
import 'package:muhammad_essam_portfolio/res/assets.dart';

import '../../Core/constants/text.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        border: Border.all(color: grayColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            Assets.chertNodes,
            width: double.infinity,
          ),
          Container(
            color: grayColor,
            height: 1,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 8,
              children: [
                TextBody16(
                  'HTML',
                  color: grayColor,
                ),
                TextBody16(
                  'CSS',
                  color: grayColor,
                ),
                TextBody16(
                  'Python',
                  color: grayColor,
                ),
                TextBody16(
                  'Flask',
                  color: grayColor,
                ),
                TextBody16(
                  'HTML',
                  color: grayColor,
                ),
                TextBody16(
                  'CSS',
                  color: grayColor,
                ),
                TextBody16(
                  'Python',
                  color: grayColor,
                ),
                TextBody16(
                  'Flask',
                  color: grayColor,
                ),
              ],
            ),
          ),
          Container(
            color: grayColor,
            height: 1,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                TextBody24(
                  'ChertNodes',
                  color: Colors.white,
                ),
                TextBody16(
                  'Minecraft servers hosting ',
                  color: grayColor,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: mainColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 4),
                        child: TextBody16(
                          'Live <~>',
                          color: grayColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
