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
      backgroundColor: MaterialStateProperty.all<Color>(Colors.black87),
      elevation: MaterialStateProperty.all<double>(10),
      shadowColor: MaterialStateProperty.all<Color>(Colors.blue.shade50),
      overlayColor: MaterialStateProperty.all<Color>(Colors.lightBlue),
    ),
  ),
);