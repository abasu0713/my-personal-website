import 'package:flutter/material.dart';
import 'package:my_website/pages/landing.dart';
import 'package:my_website/pages/splash.dart';
import 'package:my_website/utils/themes/dark.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arko Basu\'s very own website',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: myDarkTheme,
      themeMode: ThemeMode.dark,
      home: const MySplashScreen(),
    );
  }
}

