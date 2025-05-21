import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Home/Components/text_with_hash.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          FlutterLogo(
            size: 50,
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
          )
        ],
      ),
    );
  }
}
