import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/constants/text.dart';

import '../../constants/colors.dart';

class HoverEffectText extends StatefulWidget {
  const HoverEffectText({
    super.key,
    required this.text,
    required this.onTap,
    this.color,
  });

  final String text;
  final Color? color;
  final void Function() onTap;

  @override
  State<HoverEffectText> createState() => _HoverEffectTextState();
}

class _HoverEffectTextState extends State<HoverEffectText> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovering = true), // Hover starts
      onExit: (_) => setState(() => _isHovering = false), // Hover ends
      child: InkWell(
        onTap: widget.onTap,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        child: TextBody16(
          widget.text,
          color: _isHovering == true ? mainColor : widget.color ?? Colors.white,
        ),
      ),
    );
  }
}
