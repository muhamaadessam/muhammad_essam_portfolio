import 'package:flutter/material.dart';

import '../../../../Core/components/SheardComponents/hash_head_section.dart';
import '../../Data/load_projects.dart';
import '../../Data/projects_model.dart';
import '../Components/project_card.dart';


class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

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
              HashHeadSection(
                text: 'projects',
                isViewAll: true,
                flex: 4,
              ),
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
