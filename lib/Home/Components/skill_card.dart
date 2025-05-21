import 'package:flutter/material.dart';

import '../../Core/constants/colors.dart';
import '../../Core/constants/text.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({super.key, this.isFirst = false});

  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      width: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextBody16(
              'Languages',
              color: Colors.white,
            ),
          ),
          Container(
            height: 1,
            color: grayColor,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                TextBody16(
                  'Flutter',
                  color: grayColor,
                ),
                TextBody16(
                  'TypeScript',
                  color: grayColor,
                ),
                TextBody16(
                  'Lua',
                  color: grayColor,
                ),
                TextBody16(
                  'JavaScript',
                  color: grayColor,
                ),
                if (isFirst)
                  TextBody16(
                    'Python',
                    color: grayColor,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
