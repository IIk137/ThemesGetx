import 'package:flutter/material.dart';

class Themes {
  static final blue = ThemeData.dark().copyWith(
    colorScheme: const ColorScheme.dark().copyWith(
        background: Colors.blue,
        primary: Colors.blue.shade900,
        secondary: Colors.blueAccent),
    textTheme: TextTheme(
      headline1: TextStyle(
          color: Colors.blue.shade100,
          fontSize: 30,
          fontWeight: FontWeight.bold),
      button: TextStyle(
          color: Colors.blue.shade100,
          fontSize: 15,
          fontWeight: FontWeight.bold),
    ),
  );
  static final red = ThemeData.dark().copyWith(
    colorScheme: const ColorScheme.dark().copyWith(
        background: Colors.red,
        primary: Colors.red.shade900,
        secondary: Colors.redAccent),
    textTheme: TextTheme(
      headline1: TextStyle(
          color: Colors.red.shade100,
          fontSize: 25,
          fontWeight: FontWeight.bold),
      button: TextStyle(
          color: Colors.red.shade100,
          fontSize: 15,
          fontWeight: FontWeight.bold),
    ),
  );

  static final green = ThemeData.dark().copyWith(
    colorScheme: const ColorScheme.dark().copyWith(
        background: Colors.green,
        primary: Colors.green.shade900,
        secondary: Colors.redAccent),
    textTheme: TextTheme(
      headline1: TextStyle(
          color: Colors.green.shade100,
          fontSize: 35,
          fontWeight: FontWeight.bold),
      button: TextStyle(
          color: Colors.green.shade100,
          fontSize: 15,
          fontWeight: FontWeight.bold),
    ),
  );
}
