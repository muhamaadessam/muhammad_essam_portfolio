class SkillModel {
  final String title;
  final List<String> skills;

  SkillModel({
    required this.title,
    required this.skills,
  });

  factory SkillModel.fromJson(Map<String, dynamic> json) {
    return SkillModel(
      title: json['title'],
      skills: List<String>.from(json['skills']),
    );
  }
}
