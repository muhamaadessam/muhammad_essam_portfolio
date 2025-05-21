import 'package:flutter/material.dart';

import '../../Core/constants/colors.dart';
import '../../Core/constants/text.dart';
import 'hash_head_section.dart';

class ContactsSection extends StatelessWidget {
  const ContactsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 45,
      children: [
        HashHeadSection(
          text: 'contacts',
          flex: 2,
        ),
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
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  TextBody16(
                    'Messages me here',
                    color: Colors.white,
                  ),
                  TextBody16(
                    'Whatsapp: +380 66 666 66 66',
                    color: Colors.white,
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
