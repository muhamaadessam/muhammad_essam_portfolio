import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import '../../../../Core/Error/failure.dart';
import '../Models/fun_facts_model.dart';

abstract class BaseAboutMeRemoteDataSource {
  Future<Either<Failure, FunFactsModel>> getFunFacts();
}

class AboutMeRemoteDataSource implements BaseAboutMeRemoteDataSource {
  @override
  Future<Either<Failure, FunFactsModel>> getFunFacts() async {
    try {
      final doc = await FirebaseFirestore.instance
          .collection('fun_facts')
          .doc('main')
          .get();

      if (!doc.exists || doc.data() == null) {
        return Left(DatabaseFailure("Fun facts not found"));
      }

      final data = doc.data()!;
      final funFacts = FunFactsModel.fromJson(data);

      return Right(funFacts);
    } catch (e) {
      return Left(DatabaseFailure(e.toString()));
    }
  }
}
