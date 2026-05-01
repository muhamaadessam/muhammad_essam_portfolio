import 'package:dartz/dartz.dart';
import 'package:muhammad_essam_portfolio/Features/Projects/Domain/Entities/projects_entity.dart';

import '../../../../Core/Error/failure.dart';
import '../../../../Core/use_cases/base_use_cases.dart';
import '../Repository/base_projects_repository.dart';

class GetProjectsUseCase
    extends BaseUseCase<List<ProjectsEntity>, NoParameters> {
  final BaseProjectsRepository baseProjectsRepository;

  GetProjectsUseCase(this.baseProjectsRepository);

  @override
  Future<Either<Failure, List<ProjectsEntity>>> call(
      NoParameters parameters) async {
    return await baseProjectsRepository.getProjects();
  }
}
