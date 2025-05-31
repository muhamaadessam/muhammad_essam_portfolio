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

  AboutMeState({
    this.status = AboutMeStatus.initial,
    this.funFacts,
  });

  AboutMeState copyWith({
    AboutMeStatus? status,
    FunFactsEntity? funFacts,
  }) {
    return AboutMeState(
      status: status ?? this.status,
      funFacts: funFacts ?? this.funFacts,
    );
  }
}
