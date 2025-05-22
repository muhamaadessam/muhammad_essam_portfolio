import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/constants/colors.dart';
import 'package:muhammad_essam_portfolio/routes/pages.dart';
import 'package:muhammad_essam_portfolio/routes/routes.dart';
import 'package:url_strategy/url_strategy.dart';

import 'Features/Home/Screens/home_screen.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  setPathUrlStrategy();
  AppPages.initializeRouter(Routes.home);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppPages.router,
      title: 'Muhammad Essam',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: mainColor),
        scaffoldBackgroundColor: backgroundColor,
        useMaterial3: true,
      ),

    );
  }
}
