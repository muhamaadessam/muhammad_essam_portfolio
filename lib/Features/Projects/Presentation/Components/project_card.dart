import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/constants/colors.dart';
import 'package:muhammad_essam_portfolio/res/assets.dart';

import '../../../Core/components/SheardComponents/box_widget.dart';
import '../../../Core/constants/text.dart';
import '../Data/projects_model.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});

  final ProjectsModel project;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
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
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 8,
              children:
                List.generate(
                  project.projectLanguages.length,
                  (index) => TextBody16(
                    project.projectLanguages[index],
                    color: grayColor,
                  ),
                ),
            ),
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
                ),
                Row(
                  spacing: 16,
                  children: [
                    if (project.googlePlayLink.isNotEmpty)
                      GestureDetector(
                        onTap: () {
                          // launchURL(project.googlePlayLink);
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
                      GestureDetector(
                        onTap: () {
                          // launchURL(project.googlePlayLink);
                        },
                        child: BoxWidget(
                          child: TextBody16(
                            'App Store',
                            color: grayColor,
                          ),
                          color: mainColor,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
