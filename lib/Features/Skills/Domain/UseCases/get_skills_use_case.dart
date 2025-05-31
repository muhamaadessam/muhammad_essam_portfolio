import 'package:dartz/dartz.dart';
import 'package:muhammad_essam_portfolio/Features/Skills/Domain/Entities/skill_entity.dart';

import '../../../../Core/Error/failure.dart';
import '../../../../Core/use_cases/base_use_cases.dart';
import '../Repository/base_skills_repository.dart';

class GetSkillsUseCase extends BaseUseCase<List<SkillEntity>, NoParameters> {
  final BaseSkillsRepository baseSkillsRepository;

  GetSkillsUseCase(this.baseSkillsRepository);

  @override
  Future<Either<Failure, List<SkillEntity>>> call(
      NoParameters parameters) async {
    return await baseSkillsRepository.getSkills();
  }
}
