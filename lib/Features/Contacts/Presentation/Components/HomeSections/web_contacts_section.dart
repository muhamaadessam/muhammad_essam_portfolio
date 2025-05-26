import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/components/SheardComponents/box_widget.dart';

import '../../../../../Core/components/SheardComponents/hash_head_section.dart';
import '../../../../../Core/components/SheardComponents/text_with_slash.dart';
import '../../../../../Core/constants/colors.dart';
import '../../../../../Core/constants/text.dart';

class WebContactsSection extends StatelessWidget {
  const WebContactsSection({super.key, required this.inHome});

  final bool inHome;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 32,
      children: [
        if (inHome)
          HashHeadSection(
            text: 'contacts',
            flex: 1,
          )
        else
          TextWithSlash(text: 'contacts'),
        Row(
          spacing: 64,
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
