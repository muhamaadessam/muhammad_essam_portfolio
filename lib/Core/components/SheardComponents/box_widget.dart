import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  const BoxWidget({
    super.key,
    required this.child,
    required this.color,
  });

  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      child: child,
    );
  }
}
