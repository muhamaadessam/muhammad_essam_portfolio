import '../../Domain/Entities/projects_entity.dart';

class ProjectsModel extends ProjectsEntity {
  ProjectsModel({
    required super.projectName,
    required super.projectDescription,
    required super.projectImage,
    required super.projectLanguages,
    super.googlePlayLink,
    super.appStoreLink,
  });

  factory ProjectsModel.fromJson(Map<String, dynamic> json) {
    return ProjectsModel(
      projectName: json['projectName'],
      projectDescription: json['projectDescription'],
      projectImage: json['projectImage'],
      projectLanguages: List<String>.from(json['projectLanguages']),
      googlePlayLink: json['googlePlayLink'],
      appStoreLink: json['appStoreLink'],
    );
  }
}
