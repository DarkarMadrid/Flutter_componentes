import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xff156618);
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.green,
      appBarTheme: const AppBarTheme(color: primary),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary));
}
