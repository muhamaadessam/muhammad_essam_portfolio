import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:muhammad_essam_portfolio/Features/Projects/Data/Models/projects_model.dart';

import '../../../../Core/Error/failure.dart';

abstract class BaseProjectsRemoteDataSource {
  Future<Either<Failure, List<ProjectsModel>>> getProjects();
}

class ProjectsRemoteDataSource implements BaseProjectsRemoteDataSource {
  @override
  Future<Either<Failure, List<ProjectsModel>>> getProjects() async {
    try {
      final response =
          await FirebaseFirestore.instance.collection('projects').get();

      final projects = response.docs
          .map(
            (doc) => ProjectsModel.fromJson(doc.data()),
          )
          .toList();

      return Right(projects);
    } catch (e) {
      return Left(DatabaseFailure(e.toString()));
    }
  }
}
