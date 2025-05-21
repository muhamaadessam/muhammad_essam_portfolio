import 'package:flutter/material.dart';
import 'package:muhammad_essam_portfolio/Core/constants/colors.dart';
import 'package:muhammad_essam_portfolio/Home/Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muhammad Essam',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: mainColor),
        scaffoldBackgroundColor: backgroundColor,
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
