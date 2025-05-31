import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';

import '../../../../Core/Error/failure.dart';
import '../../../../res/assets.dart';
import '../Models/skill_model.dart';

abstract class BaseSkillsLocalDataSource {
  Future<Either<Failure, List<SkillModel>>> getSkills();
}

class SkillsLocalDataSource implements BaseSkillsLocalDataSource {
  @override
  Future<Either<Failure, List<SkillModel>>> getSkills() async {
    try {
      final String response = await rootBundle.loadString(Assets.skillsJson);
      final List<dynamic> data = json.decode(response);
      final skills =
          data.map<SkillModel>((json) => SkillModel.fromJson(json)).toList();
      return Right(skills); // Wrap in Either.Right
    } catch (e) {
      return Left(DatabaseFailure(
          e.toString())); // Replace with your actual Failure handling
    }
  }
}
