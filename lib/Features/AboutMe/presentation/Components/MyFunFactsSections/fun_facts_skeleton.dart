import 'package:flutter/material.dart';
import '../../../../../Core/components/SheardComponents/app_shimmer.dart';
import '../../../../../Core/constants/colors.dart';

class FunFactsSkeleton extends StatelessWidget {
  const FunFactsSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: List.generate(
        4, // show 4 facts shimmers
        (index) => Container(
          decoration: BoxDecoration(
            border: Border.all(color: grayColor.withValues(alpha: 0.2)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: AppShimmer(
            width: 140 + (index * 30.0), // varying widths
            height: 16,
            shapeBorder: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2)),
            ),
          ),
        ),
      ),
    );
  }
}
