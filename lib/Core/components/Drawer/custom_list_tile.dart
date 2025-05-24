import 'package:flutter/material.dart';

import '../SheardComponents/text_with_hash.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    this.onTap,
  });

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: TextWithHash(text: title),
      onTap: onTap,
    );
  }
}
