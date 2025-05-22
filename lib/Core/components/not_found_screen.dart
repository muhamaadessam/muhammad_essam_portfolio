import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/constants/text.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            TextTitle('404', fontSize: 40,),
            TextTitle('Page Not Found',fontSize: 30,),
          ],
        ),
      ),
    );
  }
}