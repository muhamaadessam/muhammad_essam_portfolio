import '../../../Domain/Entities/skill_entity.dart';

enum SkillsStatus {
  initial,
  loading,
  loaded,
  error,
}

class SkillsState {
  final SkillsStatus status;
  final List<SkillEntity> skills;

  const SkillsState({
    this.status = SkillsStatus.initial,
    this.skills = const [],
  });

  SkillsState copyWith({
    SkillsStatus? status,
    List<SkillEntity>? skills,
  }) {
    return SkillsState(
      status: status ?? this.status,
      skills: skills ?? this.skills,
    );
  }
}
