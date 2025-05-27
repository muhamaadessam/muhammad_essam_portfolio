import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class HoverEffectWidget extends StatefulWidget {
  const HoverEffectWidget({
    super.key,
    required this.child,
    required this.onTap,
    this.border,
    this.color,
  });

  final Widget child;
  final BoxBorder? border;
  final Color? color;
  final void Function() onTap;

  @override
  State<HoverEffectWidget> createState() => _HoverEffectWidgetState();
}

class _HoverEffectWidgetState extends State<HoverEffectWidget> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovering = true), // Hover starts
      onExit: (_) => setState(() => _isHovering = false), // Hover ends
      child: InkWell(
        onTap: widget.onTap,
        child: Transform.scale(
          scale: _isHovering ? 1.05 : 1.0,
          child: Container(
            decoration: BoxDecoration(
              border: widget.border,
              color: backgroundColor,
              boxShadow: [
                BoxShadow(
                  color: _isHovering == true
                      ? widget.color ?? mainColor
                      : Colors.transparent,
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
