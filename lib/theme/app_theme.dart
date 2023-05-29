import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xff003502);
  static const Color text = Color(0xffffffff);
  static const Color sec = Color(0xff007700);
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.green,
      appBarTheme: const AppBarTheme(color: primary),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: Colors.black)),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary));
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Color(0xff082509),
      appBarTheme: const AppBarTheme(color: primary),
      scaffoldBackgroundColor: Color(0xff3d3d3d));
}
