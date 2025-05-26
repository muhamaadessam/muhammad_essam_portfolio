import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  // Get the current theme mode
  ThemeMode get themeMode => Theme.of(this).brightness == Brightness.dark
      ? ThemeMode.dark
      : ThemeMode.light;

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  // Get the current screen height
  double get screenHeight => MediaQuery.of(this).size.height;

  // Get the current screen width
  double get screenWidth => MediaQuery.of(this).size.width;

  // Get the current theme
  ThemeData get theme => Theme.of(this);

  // Get the text theme
  TextTheme get textTheme => Theme.of(this).textTheme;

  // Get the current color scheme
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  bool get isArabic => Localizations.localeOf(this).languageCode == 'ar';

  TextDirection get textDirection =>
      isArabic ? TextDirection.rtl : TextDirection.ltr;

  FocusScopeNode get focusScopeNode => FocusScope.of(this);
}
