import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/constants/colors.dart';
import 'package:muhammad_essam_portfolio/res/assets.dart';

import '../../../../Core/components/SheardComponents/box_widget.dart';
import '../../../../Core/components/SheardComponents/hover_effect_widget.dart';
import '../../../../Core/constants/text.dart';
import '../../../../Core/constants/url_launcher.dart';
import '../../Domain/Entities/projects_entity.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});

  final ProjectsEntity project;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      decoration: BoxDecoration(
        border: Border.all(color: grayColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            project.projectImage,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            color: grayColor,
            height: 1,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    if (project.isFeatured)
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: mainColor.withValues(alpha: 0.1),
                          border: Border.all(color: mainColor),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.star, size: 12, color: mainColor),
                            const SizedBox(width: 4),
                            const Text(
                              'FEATURED',
                              style: TextStyle(
                                color: mainColor,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'FiraCode-Regular',
                              ),
                            ),
                          ],
                        ),
                      ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        border: Border.all(color: grayColor),
                      ),
                      child: Text(
                        project.category.toUpperCase(),
                        style: TextStyle(
                          color: grayColor,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'FiraCode-Regular',
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: _getStatusColor(project.status)),
                      ),
                      child: Text(
                        project.status.toUpperCase(),
                        style: TextStyle(
                          color: _getStatusColor(project.status),
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'FiraCode-Regular',
                        ),
                      ),
                    ),
                  ],
                ),
                TextBody24(
                  project.projectName,
                  color: Colors.white,
                ),
                TextBody16(
                  project.projectDescription,
                  color: grayColor,
                  maxLines: 20,
                ),
              ],
            ),
          ),
          if (project.projectLanguages.isNotEmpty)
            Column(
              children: [
                Container(
                  color: grayColor,
                  height: 1,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    spacing: 16,
                    children: List.generate(
                      project.projectLanguages.length,
                      (index) => Row(
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            color: mainColor,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Flexible(
                            child: TextBody16(
                              project.projectLanguages[index],
                              maxLines: 3,
                              color: grayColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              children: List.generate(
                project.links.length,
                (index) => HoverEffectWidget(
                  onTap: () async {
                    urlLauncher(project.links[index].link);
                  },
                  child: BoxWidget(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _getLinkIcon(project.links[index].title),
                        const SizedBox(width: 8),
                        TextBody16(
                          project.links[index].title,
                          color: grayColor,
                        ),
                      ],
                    ),
                    color: mainColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'active':
        return const Color(0xff2ecc71);
      case 'completed':
        return const Color(0xff3498db);
      case 'in progress':
        return const Color(0xfff1c40f);
      case 'planned':
        return const Color(0xff9b59b6);
      default:
        return grayColor;
    }
  }

  Widget _getLinkIcon(String title) {
    final lowerTitle = title.toLowerCase();

    // Check custom asset icons first
    if (lowerTitle.contains('github') ||
        lowerTitle.contains('git') ||
        lowerTitle.contains('repo') ||
        lowerTitle.contains('code')) {
      return ImageIcon(
        const AssetImage(Assets.github),
        size: 16,
        color: grayColor,
      );
    } else if (lowerTitle.contains('linkedin')) {
      return ImageIcon(
        const AssetImage(Assets.linkedin),
        size: 16,
        color: grayColor,
      );
    } else if (lowerTitle.contains('facebook')) {
      return ImageIcon(
        const AssetImage(Assets.facebook),
        size: 16,
        color: grayColor,
      );
    } else if (lowerTitle.contains('instagram')) {
      return ImageIcon(
        const AssetImage(Assets.instagram),
        size: 16,
        color: grayColor,
      );
    } else if (lowerTitle.contains('whatsapp')) {
      return ImageIcon(
        const AssetImage(Assets.whatsapp),
        size: 16,
        color: grayColor,
      );
    }

    // Fallback to Material icons
    IconData iconData = Icons.link;
    if (lowerTitle.contains('play') ||
        lowerTitle.contains('google') ||
        lowerTitle.contains('android')) {
      iconData = Icons.android_rounded;
    } else if (lowerTitle.contains('apple') ||
        lowerTitle.contains('ios') ||
        lowerTitle.contains('app store')) {
      iconData = Icons.apple;
    } else if (lowerTitle.contains('website') || lowerTitle.contains('web')) {
      iconData = Icons.web;
    } else if (lowerTitle.contains('microsoft') ||
        lowerTitle.contains('windows')) {
      iconData = Icons.window;
    } else if (lowerTitle.contains('linux')) {
      iconData = Icons.computer;
    } else if (lowerTitle.contains('figma') || lowerTitle.contains('design')) {
      iconData = Icons.design_services;
    } else if (lowerTitle.contains('flutter')) {
      iconData = Icons.flutter_dash;
    }

    return Icon(
      iconData,
      size: 16,
      color: grayColor,
    );
  }
}
