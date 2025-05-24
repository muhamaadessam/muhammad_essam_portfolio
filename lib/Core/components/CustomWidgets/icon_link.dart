import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/constants/url_launcher.dart';

import '../../constants/colors.dart';

class IconLink extends StatelessWidget {
  const IconLink(
      {super.key, required this.url, required this.icon, required this.name});

  final String url;
  final String icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        urlLauncher(url);
      },
      child: Image.asset(
        icon,
        width: 24,
        color: grayColor,
        semanticLabel: name,
      ),
    );
  }
}
