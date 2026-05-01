import 'package:dartz/dartz.dart';
import 'package:muhammad_essam_portfolio/Core/Error/failure.dart';

import '../../Domain/Repository/base_projects_repository.dart';
import '../DataSource/projects_remote_data_source.dart';
import '../Models/projects_model.dart';

class ProjectsRepository extends BaseProjectsRepository {
  // final BaseProjectsLocalDataSource baseProjectsLocalDataSource;
  final BaseProjectsRemoteDataSource baseProjectsRemoteDataSource;

  ProjectsRepository(this.baseProjectsRemoteDataSource);

  @override
  Future<Either<Failure, List<ProjectsModel>>> getProjects() {
    return baseProjectsRemoteDataSource.getProjects();
  }
}
