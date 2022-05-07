import 'package:flutter/material.dart';

ThemeData myDarkTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.brown,
    brightness: Brightness.dark,
    backgroundColor: Colors.black87,
  ),
  scaffoldBackgroundColor: Colors.white30,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(16)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade800)
    ),
  ),
);