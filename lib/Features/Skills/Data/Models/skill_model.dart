import '../../Domain/Entities/skill_entity.dart';

class SkillModel extends SkillEntity {
  const SkillModel({
    required super.title,
    required super.skills,
  });

  factory SkillModel.fromJson(Map<String, dynamic> json) {
    return SkillModel(
      title: json['title'],
      skills: List<String>.from(json['skills']),
    );
  }
}
