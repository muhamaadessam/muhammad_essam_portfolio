import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/constants/colors.dart';

import '../../../../Core/components/SheardComponents/box_widget.dart';
import '../../../../Core/components/SheardComponents/hover_effect_widget.dart';
import '../../../../Core/constants/text.dart';
import '../../../../Core/constants/url_launcher.dart';
import '../../Data/projects_model.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});

  final ProjectsModel project;

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
          Image.asset(
            project.projectImage,
            width: double.infinity,
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
            child: Row(
              spacing: 16,
              children: [
                if (project.googlePlayLink.isNotEmpty)
                  HoverEffectWidget(
                    onTap: () async {
                      urlLauncher(project.googlePlayLink);
                    },
                    child: BoxWidget(
                      child: TextBody16(
                        'Play Store',
                        color: grayColor,
                      ),
                      color: mainColor,
                    ),
                  ),
                if (project.appStoreLink.isNotEmpty)
                  HoverEffectWidget(
                    child: BoxWidget(
                      child: TextBody16(
                        'App Store',
                        color: grayColor,
                      ),
                      color: mainColor,
                    ),
                    onTap: () async {
                      urlLauncher(project.appStoreLink);
                    },
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
