import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:muhammad_essam_portfolio/Core/constants/text.dart';

import '../../../res/assets.dart';
import '../../../routes/routes.dart';
import '../CustomWidgets/custom_button.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.essamLogoWithText,
              width: 225,
            ),
            const SizedBox(
              height: 32,
            ),
            TextTitle(
              '404',
              fontSize: 40,
            ),
            TextTitle(
              'Page Not Found',
              fontSize: 30,
            ),
            const SizedBox(
              height: 64,
            ),
            SizedBox(
              height: 50,
              child: CustomButton(
                onPressed: () => context.go(Routes.homeScreen),
                child: TextBody16(
                  'Back Home',
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
