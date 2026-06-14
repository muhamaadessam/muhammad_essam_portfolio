import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:muhammad_essam_portfolio/Core/constants/colors.dart';

class AppShimmer extends StatelessWidget {
  const AppShimmer({
    super.key,
    required this.width,
    required this.height,
    this.shapeBorder = const RoundedRectangleBorder(),
  });

  final double width;
  final double height;
  final ShapeBorder shapeBorder;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color(0xff2e323a),
      highlightColor: const Color(0xff3e4450),
      child: Container(
        width: width,
        height: height,
        decoration: ShapeDecoration(
          color: grayColor,
          shape: shapeBorder,
        ),
      ),
    );
  }
}
