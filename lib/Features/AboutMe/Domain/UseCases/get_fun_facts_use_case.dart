import 'package:dartz/dartz.dart';

import '../../../../Core/Error/failure.dart';
import '../../../../Core/use_cases/base_use_cases.dart';
import '../Entities/fun_facts_entity.dart';
import '../Repository/base_about_me_repository.dart';

class GetFunFactsUseCase extends BaseUseCase<FunFactsEntity, NoParameters> {
  final BaseAboutMeRepository baseAboutMeRepository;

  GetFunFactsUseCase(this.baseAboutMeRepository);

  @override
  Future<Either<Failure, FunFactsEntity>> call(NoParameters parameters) async {
    return await baseAboutMeRepository.getFunFacts();
  }
}
