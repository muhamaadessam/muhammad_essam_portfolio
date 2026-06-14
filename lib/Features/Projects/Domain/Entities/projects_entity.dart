import 'package:equatable/equatable.dart';

import 'link_entity.dart';

class ProjectsEntity extends Equatable {
  final String projectName;
  final String projectDescription;
  final String projectImage;
  final List<String> projectLanguages;
  final List<LinkEntity> links;
  final String category;
  final String status;
  final bool isFeatured;

  ProjectsEntity({
    required this.projectName,
    required this.projectDescription,
    required this.projectImage,
    required this.projectLanguages,
    required this.links,
    required this.category,
    required this.status,
    required this.isFeatured,
  });

  @override
  List<Object?> get props => [
        projectName,
        projectDescription,
        projectImage,
        projectLanguages,
        links,
        category,
        status,
        isFeatured,
      ];
}
