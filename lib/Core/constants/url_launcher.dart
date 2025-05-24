import 'package:url_launcher/url_launcher.dart';

urlLauncher(String url) async {
  final Uri _url = Uri.parse(url);

  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

class Links {
  static const String linkedIn =
      'https://www.linkedin.com/in/muhammadessam159/';
  static const String facebook = 'https://www.facebook.com/muhammad.essam.15/';
  static const String github = 'https://github.com/muhamaadessam/';
  static const String whatsapp =
      'https://api.whatsapp.com/send/?phone=201017022791&text&type=phone_number&app_absent=0/';
  static const String instagram =
      'https://www.instagram.com/muhammad.essam.15/';
}
