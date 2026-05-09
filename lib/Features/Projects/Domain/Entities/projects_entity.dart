import 'package:equatable/equatable.dart';

import 'link_entity.dart';

class ProjectsEntity extends Equatable {
  final String projectName;
  final String projectDescription;
  final String projectImage;
  final List<String> projectLanguages;
  final List<LinkEntity> links;


  ProjectsEntity({
    required this.projectName,
    required this.projectDescription,
    required this.projectImage,
    required this.projectLanguages,
    required this.links,

  });

  @override
  List<Object?> get props => [
        projectName,
        projectDescription,
        projectImage,
        projectLanguages,
        links,

      ];
}
