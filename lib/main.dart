// import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:muhammad_essam_portfolio/Core/constants/colors.dart';
import 'package:muhammad_essam_portfolio/routes/pages.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  // setUrlStrategy(PathUrlStrategy());
  setUrlStrategy(HashUrlStrategy());
  // setPathUrlStrategy();
  AppPages.initializeRouter();
  // cleanRedirect();
  runApp(const MyApp());
}

// void cleanRedirect() {
//   // Restore the path from ?redirect= if it exists
//   final uri = Uri.base;
//   final redirect = uri.queryParameters['redirect'];
//   if (redirect != null) {
//     html.window.history.replaceState(null, '', redirect);
//   }
// }
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
        drawerTheme: const DrawerThemeData(
          backgroundColor: backgroundColor,
        ),
        useMaterial3: true,
      ),
    );
  }
}
