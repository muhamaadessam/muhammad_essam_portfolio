import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';


final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    debugPrint("Initializing ServicesLocator...");

    /// Auth DATA SOURCE
    // sl.registerLazySingleton<BaseAuthRemoteDataSource>(
    //     () => AuthRemoteDataSource());

    /// Repository
    // sl.registerLazySingleton<BaseAuthRepository>(() => AuthRepository(sl()));

    /// Use Cases
    // sl.registerLazySingleton(() => LoginUseCase(sl()));


    /// Bloc
    // sl.registerFactory(() => AuthCubit(
    //       loginUseCase: sl(),
    //       registerUseCase: sl(),
    //       verifyOTPUseCase: sl(),
    //       logoutUseCase: sl(),
    //       forgetPasswordUseCase: sl(),
    //       resetPasswordUseCase: sl(),
    //     ));

    ///////////////////////////////////////////////////////////////////////

    debugPrint("ServicesLocator initialized successfully!");
  }
}
