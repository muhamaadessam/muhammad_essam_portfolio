import 'package:flutter/material.dart';

import '../../../core/constants/text.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
    this.trailing,
  });

  final String icon;
  final String title;
  final void Function()? onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        'assets/png/$icon.png',
        width: 30,
      ),
      title: TextTitle(title),
      onTap: onTap,
      trailing: trailing,
    );
  }
}
