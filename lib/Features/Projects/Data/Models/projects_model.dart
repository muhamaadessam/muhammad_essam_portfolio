import '../../Domain/Entities/projects_entity.dart';
import 'link_model.dart';

class ProjectsModel extends ProjectsEntity {
  ProjectsModel({
    required super.projectName,
    required super.projectDescription,
    required super.projectImage,
    required super.projectLanguages,
    required super.links,
  });

  factory ProjectsModel.fromJson(Map<String, dynamic> json) {
    print(json);
    return ProjectsModel(
      projectName: json['projectName'],
      projectDescription: json['projectDescription'],
      projectImage: json['projectImage'],
      projectLanguages: List<String>.from(json['projectLanguages']),
      links: List<LinkModel>.from(
        (json['links'] ?? json['likes'] ?? [])
            .map((x) => LinkModel.fromJson(x)),
      ),
    );
  }
}
