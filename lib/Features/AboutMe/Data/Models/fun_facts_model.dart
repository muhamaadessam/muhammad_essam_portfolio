import '../../Domain/Entities/fun_facts_entity.dart';

class FunFactsModel extends FunFactsEntity {
  FunFactsModel({required super.facts});

  factory FunFactsModel.fromJson(Map<String, dynamic> json) {
    return FunFactsModel(facts: json['facts'].cast<String>());
  }
}
