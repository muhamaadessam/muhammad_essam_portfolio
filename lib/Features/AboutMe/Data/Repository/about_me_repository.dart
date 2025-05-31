import 'package:dartz/dartz.dart';
import 'package:muhammad_essam_portfolio/Core/Error/failure.dart';

import '../../Domain/Repository/base_about_me_repository.dart';
import '../DataSource/about_me_local_data_source.dart';
import '../Models/fun_facts_model.dart';

class AboutMeRepository extends BaseAboutMeRepository {
  final BaseAboutMeLocalDataSource baseAboutMeLocalDataSource;

  AboutMeRepository(this.baseAboutMeLocalDataSource);

  @override
  Future<Either<Failure, FunFactsModel>> getFunFacts() {
    return baseAboutMeLocalDataSource.getFunFacts();
  }
}
