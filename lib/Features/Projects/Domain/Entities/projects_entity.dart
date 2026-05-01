import 'package:equatable/equatable.dart';

class ProjectsEntity extends Equatable {
  final String projectName;
  final String projectDescription;
  final String projectImage;
  final List<String> projectLanguages;
  final String? googlePlayLink;
  final String? appStoreLink;

  ProjectsEntity({
    required this.projectName,
    required this.projectDescription,
    required this.projectImage,
    required this.projectLanguages,
    this.googlePlayLink,
    this.appStoreLink,
  });

  @override
  List<Object?> get props => [
    projectName,
    projectDescription,
    projectImage,
    projectLanguages,
    googlePlayLink,
    appStoreLink,
  ];


}
