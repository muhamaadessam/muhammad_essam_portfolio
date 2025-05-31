import 'package:equatable/equatable.dart';

class FunFactsEntity extends Equatable {
  final List<String> facts;

  const FunFactsEntity({
    required this.facts,
  });

  @override
  List<Object?> get props => [facts];
}
