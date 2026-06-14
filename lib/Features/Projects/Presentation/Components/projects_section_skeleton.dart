import 'package:flutter/material.dart';
import '../../../../Core/components/SheardComponents/app_shimmer.dart';
import '../../../../Core/constants/colors.dart';

class ProjectsSectionSkeleton extends StatelessWidget {
  const ProjectsSectionSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 32,
      runSpacing: 32,
      children: List.generate(
        3, // show 3 cards loading
        (index) => Container(
          width: 400,
          decoration: BoxDecoration(
            border: Border.all(color: grayColor.withValues(alpha: 0.2)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image shimmer
              const AppShimmer(
                width: double.infinity,
                height: 200,
              ),
              Container(
                color: grayColor.withValues(alpha: 0.2),
                height: 1,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 12,
                  children: [
                    // Badges row shimmer
                    Row(
                      spacing: 8,
                      children: [
                        AppShimmer(
                          width: 80,
                          height: 20,
                          shapeBorder: Border.all(color: grayColor.withValues(alpha: 0.2)),
                        ),
                        AppShimmer(
                          width: 60,
                          height: 20,
                          shapeBorder: Border.all(color: grayColor.withValues(alpha: 0.2)),
                        ),
                      ],
                    ),
                    // Title shimmer
                    const AppShimmer(
                      width: 200,
                      height: 24,
                      shapeBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                    ),
                    // Description shimmer (2 lines)
                    const Column(
                      spacing: 6,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppShimmer(
                          width: double.infinity,
                          height: 14,
                          shapeBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                        ),
                        AppShimmer(
                          width: 280,
                          height: 14,
                          shapeBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Languages shimmer
              Container(
                color: grayColor.withValues(alpha: 0.2),
                height: 1,
                width: double.infinity,
              ),
              const Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  spacing: 8,
                  children: [
                    Row(
                      children: [
                        AppShimmer(width: 8, height: 8),
                        SizedBox(width: 8),
                        AppShimmer(
                          width: 120,
                          height: 14,
                          shapeBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        AppShimmer(width: 8, height: 8),
                        SizedBox(width: 8),
                        AppShimmer(
                          width: 90,
                          height: 14,
                          shapeBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
