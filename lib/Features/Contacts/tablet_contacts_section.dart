import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/components/SheardComponents/box_widget.dart';

import '../../Core/components/SheardComponents/hash_head_section.dart';
import '../../Core/constants/colors.dart';
import '../../Core/constants/text.dart';

class TabletContactsSection extends StatelessWidget {
  const TabletContactsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: [
        HashHeadSection(
          text: 'contacts',
          flex: 1,
        ),
        Row(
          spacing: 32,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: TextBody16(
                'I’m interested in freelance opportunities. However, if you have other request or question, don’t hesitate to contact me',
                color: grayColor,
                maxLines: 15,
              ),
            ),
            BoxWidget(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16,
                  children: [
                    TextBody16(
                      'Messages me here',
                      color: Colors.white,
                    ),
                    TextBody16(
                      'Whatsapp: +20 101 702 2791',
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              color: grayColor,
            ),
          ],
        ),
      ],
    );
  }
}
