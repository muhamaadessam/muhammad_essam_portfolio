import 'package:dartz/dartz.dart';

import '../../../../Core/Error/failure.dart';
import '../Entities/skill_entity.dart';

abstract class BaseSkillsRepository {
  Future<Either<Failure, List<SkillEntity>>> getSkills();
}
