import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class BoxWidget extends StatelessWidget {
  const BoxWidget({
    super.key,
    required this.child,
    required this.color,
    this.isHovering,
  });

  final Widget child;
  final Color color;
  final bool? isHovering;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
        ),
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            color: isHovering == true ? color : Colors.transparent,
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      child: child,
    );
  }
}
