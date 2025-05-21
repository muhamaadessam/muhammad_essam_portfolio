import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.child,
    this.backgroundColor,
    this.elevationColor,
    this.elevation,
    this.borderRadius,
  });

  final void Function()? onPressed;
  final Widget child;
  final Color? backgroundColor;
  final Color? elevationColor;
  final double? elevation;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: WidgetStateProperty.resolveWith((states) => elevation ?? 9),
        shadowColor: WidgetStateColor.resolveWith(
            (states) => elevationColor ?? Colors.black.withValues(alpha: 0.5)),
        backgroundColor: WidgetStateColor.resolveWith(
            (states) => backgroundColor ?? mainColor),
        shape: WidgetStateProperty.resolveWith(
          (states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8)),
        ),
      ),
      child: child,
    );
  }
}
