import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../Core/components/SheardComponents/hash_head_section.dart';
import '../../../../Core/components/SheardComponents/text_with_slash.dart';
import '../../../../routes/routes.dart';
import '../../Data/load_projects.dart';
import '../../Data/projects_model.dart';
import '../Components/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key, required this.inHome});

  final bool inHome;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: loadProjects(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          final projects = snapshot.data as List<ProjectsModel>;
          return Column(
            spacing: 32,
            children: [
              if (inHome)
                HashHeadSection(
                  text: 'projects',
                  isViewAll: true,
                  onTap: () {
                    context.go(Routes.worksScreen);
                  },
                  flex: 4,
                )
              else
                TextWithSlash(text: 'projects'),
              Wrap(
                spacing: 32,
                runSpacing: 32,
                children: List.generate(
                  projects.length,
                  (index) => ProjectCard(
                    project: projects[index],
                  ),
                ),
              ),
            ],
          );
        });
  }
}
