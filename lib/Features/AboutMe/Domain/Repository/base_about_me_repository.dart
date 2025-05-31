import 'package:dartz/dartz.dart';

import '../../../../Core/Error/failure.dart';
import '../Entities/fun_facts_entity.dart';

abstract class BaseAboutMeRepository {
  Future<Either<Failure, FunFactsEntity>> getFunFacts();
}
