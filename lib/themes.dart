import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData appTheme = ThemeData(
    textTheme: _customTextTheme(),
    primarySwatch: Colors.green,
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.white,
    // Other theme configurations can be added here
  );

  static TextTheme _customTextTheme() {
    return const TextTheme(
      bodyLarge: TextStyle(
        fontFamily: 'Poppins', // Use the same name declared in pubspec.yaml
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
