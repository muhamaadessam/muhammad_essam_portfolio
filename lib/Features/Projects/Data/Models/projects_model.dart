import '../../Domain/Entities/projects_entity.dart';
import 'link_model.dart';

class ProjectsModel extends ProjectsEntity {
  ProjectsModel({
    required super.projectName,
    required super.projectDescription,
    required super.projectImage,
    required super.projectLanguages,
    required super.links,
    required super.category,
    required super.status,
    required super.isFeatured,
  });

  factory ProjectsModel.fromJson(Map<String, dynamic> json) {
    print(json);
    return ProjectsModel(
      projectName: json['projectName'] ?? '',
      projectDescription: json['projectDescription'] ?? '',
      projectImage: json['projectImage'] ?? '',
      projectLanguages: json['projectLanguages'] != null
          ? List<String>.from(json['projectLanguages'])
          : [],
      links: List<LinkModel>.from(
        (json['links'] ?? json['likes'] ?? [])
            .map((x) => LinkModel.fromJson(x)),
      ),
      category: json['category'] ?? 'Mobile',
      status: json['status'] ?? 'Completed',
      isFeatured: json['isFeatured'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'projectName': projectName,
      'projectDescription': projectDescription,
      'projectImage': projectImage,
      'projectLanguages': projectLanguages,
      'links': links.map((x) {
        if (x is LinkModel) {
          return x.toJson();
        }
        return {
          'link': x.link,
          'title': x.title,
        };
      }).toList(),
      'category': category,
      'status': status,
      'isFeatured': isFeatured,
    };
  }
}
