import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/constants/text.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextBody16('About Me'),
      ),
    );
  }
}
