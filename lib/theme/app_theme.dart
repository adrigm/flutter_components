import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,

    // AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      elevation: 0,
    ),

    // Text Button
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primary,

    // AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      elevation: 0,
    ),
    scaffoldBackgroundColor: Colors.black,
  );
}
