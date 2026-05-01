import '../../../Domain/Entities/projects_entity.dart';

enum ProjectsStatus {
  initial,
  loading,
  loaded,
  error,
}

class ProjectsState {
  final ProjectsStatus status;
  final List<ProjectsEntity> projects;

  const ProjectsState({
    this.status = ProjectsStatus.initial,
    this.projects = const [],
  });

  ProjectsState copyWith({
    ProjectsStatus? status,
    List<ProjectsEntity>? projects,
  }) {
    return ProjectsState(
      status: status ?? this.status,
      projects: projects ?? this.projects,
    );
  }
}
