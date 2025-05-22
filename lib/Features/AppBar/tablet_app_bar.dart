import 'package:flutter/material.dart';

import '../../Core/components/SheardComponents/text_with_hash.dart';
import '../../res/assets.dart';

class TabletAppBar extends StatelessWidget {
  const TabletAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(
            Assets.logo,
            width: 70,
          ),
          const Spacer(),
          Row(
            spacing: 20,
            children: [
              InkWell(
                child: TextWithHash(text: 'home'),
                onTap: () {},
              ),
              InkWell(
                child: TextWithHash(text: 'works'),
                onTap: () {},
              ),
              InkWell(
                child: TextWithHash(text: 'about-me'),
                onTap: () {},
              ),
              InkWell(
                child: TextWithHash(text: 'contacts'),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
