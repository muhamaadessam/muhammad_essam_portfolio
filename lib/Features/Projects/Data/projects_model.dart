class ProjectsModel {

  final String projectName;
  final String projectDescription;
  final String projectImage;
  final List<String> projectLanguages;
  final String googlePlayLink;
  final String appStoreLink;

  ProjectsModel({

    required this.projectName,
    required this.projectDescription,
    required this.projectImage,
    required this.projectLanguages,
    required this.googlePlayLink,
    required this.appStoreLink,
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