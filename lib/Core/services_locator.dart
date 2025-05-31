import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:muhammad_essam_portfolio/Features/Skills/Data/DataSource/skills_local_data_source.dart';

import '../Features/AboutMe/Data/DataSource/about_me_local_data_source.dart';
import '../Features/AboutMe/Data/Repository/about_me_repository.dart';
import '../Features/AboutMe/Domain/Repository/base_about_me_repository.dart';
import '../Features/AboutMe/Domain/UseCases/get_fun_facts_use_case.dart';
import '../Features/AboutMe/presentation/controller/cubit.dart';
import '../Features/Skills/Data/Repository/skills_repository.dart';
import '../Features/Skills/Domain/Repository/base_skills_repository.dart';
import '../Features/Skills/Domain/UseCases/get_skills_use_case.dart';
import '../Features/Skills/Presentation/controller/skills/cubit.dart';

final sl = GetIt.instance;

class ServicesLocator {
  Future<void> init() async {
    debugPrint("Initializing ServicesLocator...");
    await sl.allReady();

    /// Auth DATA SOURCE
    sl.registerLazySingleton<BaseSkillsLocalDataSource>(
        () => SkillsLocalDataSource());

    /// Repository
    sl.registerLazySingleton<BaseSkillsRepository>(
        () => SkillsRepository(sl()));

    /// Use Cases
    sl.registerLazySingleton(() => GetSkillsUseCase(sl()));

    /// Bloc
    sl.registerFactory(() => SkillsCubit(sl()));

    ///////////////////////////////////////////////////////////////////////

    /// Auth DATA SOURCE
    sl.registerLazySingleton<BaseAboutMeLocalDataSource>(
        () => AboutMeLocalDataSource());

    /// Repository
    sl.registerLazySingleton<BaseAboutMeRepository>(
        () => AboutMeRepository(sl()));

    /// Use Cases
    sl.registerLazySingleton(() => GetFunFactsUseCase(sl()));

    /// Bloc
    sl.registerFactory(() => AboutMeCubit(sl()));

    debugPrint("ServicesLocator initialized successfully!");
  }
}
