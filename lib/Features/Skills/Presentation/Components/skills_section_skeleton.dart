import 'package:flutter/material.dart';
import '../../../../Core/components/SheardComponents/app_shimmer.dart';
import '../../../../Core/constants/colors.dart';

class SkillsSectionSkeleton extends StatelessWidget {
  const SkillsSectionSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: List.generate(
        4, // show 4 skill categories loading
        (index) => Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withValues(alpha: 0.2)),
          ),
          width: 270,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Skill Category Title shimmer
              const Padding(
                padding: EdgeInsets.all(8),
                child: AppShimmer(
                  width: 120,
                  height: 18,
                  shapeBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                ),
              ),
              Container(
                height: 1,
                color: grayColor.withValues(alpha: 0.2),
                width: double.infinity,
              ),
              // Skills list shimmers
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: List.generate(
                    4, // show 4 items per category
                    (itemIndex) => AppShimmer(
                      width: 60 + (itemIndex * 15.0), // varying widths
                      height: 14,
                      shapeBorder: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
