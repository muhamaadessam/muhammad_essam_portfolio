import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:muhammad_essam_portfolio/Features/Skills/Data/skill_model.dart';

Future<List<SkillModel>> loadSkills() async {
  final String response =
      await rootBundle.loadString('assets/json/skills.json');
  final data = await json.decode(response);
  return data.map<SkillModel>((json) => SkillModel.fromJson(json)).toList();
}
