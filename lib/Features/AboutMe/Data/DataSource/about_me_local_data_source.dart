import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';

import '../../../../Core/Error/failure.dart';
import '../../../../res/assets.dart';
import '../Models/fun_facts_model.dart';

abstract class BaseAboutMeLocalDataSource {
  Future<Either<Failure, FunFactsModel>> getFunFacts();
}

class AboutMeLocalDataSource implements BaseAboutMeLocalDataSource {
  @override
  Future<Either<Failure, FunFactsModel>> getFunFacts() async {
    try {
      final String response =
          await rootBundle.loadString(Assets.myFunFactsJson);
      print(response);
      final dynamic data = json.decode(response);
      final funFacts = FunFactsModel.fromJson(data); // Parse properly
      return Right(funFacts); // Wrap in Either.Right
    } catch (e) {
      return Left(DatabaseFailure(
          e.toString())); // Replace with your actual Failure handling
    }
  }
}
