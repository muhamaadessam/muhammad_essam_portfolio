import 'package:muhammad_essam_portfolio/Features/Projects/Domain/Entities/link_entity.dart';


class LinkModel extends LinkEntity {
  LinkModel({
    required super.link,
    required super.title,

  });

  factory LinkModel.fromJson(Map<String, dynamic> json) {
    return LinkModel(
      link: json['link'] ?? '',
      title: json['title'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'link': link,
      'title': title,
    };
  }
}
