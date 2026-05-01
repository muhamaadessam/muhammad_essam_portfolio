// import 'dart:convert';
//
// import 'package:dartz/dartz.dart';
// import 'package:flutter/services.dart';
//
// import '../../../../Core/Error/failure.dart';
// import '../../../../res/assets.dart';
// import '../Models/projects_model.dart';
//
// abstract class BaseProjectsLocalDataSource {
//   Future<Either<Failure, List<ProjectsModel>>> getProjects();
// }
//
// class ProjectsLocalDataSource implements BaseProjectsLocalDataSource {
//   @override
//   Future<Either<Failure, List<ProjectsModel>>> getProjects() async {
//     try {
//       final String response = await rootBundle.loadString(Assets.projects);
//       final List<dynamic> data = json.decode(response);
//       final projects = data
//           .map<ProjectsModel>((json) => ProjectsModel.fromJson(json))
//           .toList();
//       return Right(projects); // Wrap in Either.Right
//     } catch (e) {
//       return Left(DatabaseFailure(
//           e.toString())); // Replace with your actual Failure handling
//     }
//   }
// }
