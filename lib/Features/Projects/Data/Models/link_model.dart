import 'package:muhammad_essam_portfolio/Features/Projects/Domain/Entities/link_entity.dart';

import '../../Domain/Entities/projects_entity.dart';

class LinkModel extends LinkEntity {
  LinkModel({
    required super.link,
    required super.title,

  });

  factory LinkModel.fromJson(Map<String, dynamic> json) {
    return LinkModel(
      link: json['link'],
      title: json['title'],
    );
  }
}
