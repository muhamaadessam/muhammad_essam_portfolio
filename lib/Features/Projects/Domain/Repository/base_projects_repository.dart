import 'package:dartz/dartz.dart';

import '../../../../Core/Error/failure.dart';
import '../Entities/projects_entity.dart';

abstract class BaseProjectsRepository {
  Future<Either<Failure, List<ProjectsEntity>>> getProjects();
}
