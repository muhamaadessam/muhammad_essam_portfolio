import 'package:equatable/equatable.dart';

class LinkEntity extends Equatable {
  final String link;
  final String title;

  const LinkEntity({required this.link, required this.title});

  @override
  List<Object?> get props => [link, title];
}
