

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'package:flutter/material.dart';
import 'package:my_website/pages/landing.dart';

import '../utils/static_images.dart';

class MySplashScreen extends StatefulWidget {
  final String title = "Arko's splash screen";

  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      nextScreen: const MyLandingPage(),
      duration: 1200,
      pageTransitionType: PageTransitionType.fade,
      splash: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(StaticImages.landingPageProfilePicture),
                fit: BoxFit.cover
            )
        ),
        width: MediaQuery.of(context).size.width,
      ),
    );
  }

}