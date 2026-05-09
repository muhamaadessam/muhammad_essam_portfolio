import '../../Domain/Entities/fun_facts_entity.dart';

enum AboutMeStatus {
  initial,
  loading,
  loaded,
  error,
}

class AboutMeState {
  final AboutMeStatus status;
  final FunFactsEntity? funFacts;
  final String objective;

  AboutMeState({
    this.status = AboutMeStatus.initial,
    this.funFacts,
    this.objective = '',
  });

  AboutMeState copyWith({
    AboutMeStatus? status,
    FunFactsEntity? funFacts,
    String? objective,
  }) {
    return AboutMeState(
      status: status ?? this.status,
      funFacts: funFacts ?? this.funFacts,
      objective: objective ?? this.objective,
    );
  }
}
