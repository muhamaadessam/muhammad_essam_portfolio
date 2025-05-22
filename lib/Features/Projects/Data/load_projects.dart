import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:muhammad_essam_portfolio/Features/Projects/Data/projects_model.dart';

Future<List<ProjectsModel>> loadProjects() async{
  final String response = await rootBundle.loadString('assets/json/projects.json');
  final data = await json.decode(response);
  return data.map<ProjectsModel>((json) => ProjectsModel.fromJson(json)).toList();
}