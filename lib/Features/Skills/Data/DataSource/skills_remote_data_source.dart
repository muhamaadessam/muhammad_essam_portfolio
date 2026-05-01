import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import '../../../../Core/Error/failure.dart';
import '../Models/skill_model.dart';

abstract class BaseSkillsRemoteDataSource {
  Future<Either<Failure, List<SkillModel>>> getSkills();
}

class SkillsRemoteDataSource implements BaseSkillsRemoteDataSource {
  @override
  Future<Either<Failure, List<SkillModel>>> getSkills() async {
    try {
      final response =
          await FirebaseFirestore.instance.collection('skills').get();

      final skills = response.docs
          .map(
            (doc) => SkillModel.fromJson(doc.data()),
          )
          .toList();

      return Right(skills);
    } catch (e) {
      return Left(DatabaseFailure(e.toString()));
    }
  }
}
