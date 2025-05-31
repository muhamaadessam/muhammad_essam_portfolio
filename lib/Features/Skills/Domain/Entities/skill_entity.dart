import 'package:equatable/equatable.dart';

class SkillEntity extends Equatable {
  final String title;
  final List<String> skills;

  const SkillEntity({
    required this.title,
    required this.skills,
  });

  @override
  List<Object?> get props => [
        title,
        skills,
      ];
}
