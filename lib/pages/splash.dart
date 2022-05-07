

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'package:flutter/material.dart';
import 'package:my_website/pages/landing.dart';

import '../utils/static_images.dart';

class MySplashScreen extends StatelessWidget {
  final String title = "Splash Screen";

  const MySplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      nextScreen: const MyLandingPage(),
      duration: 1200,
      pageTransitionType: PageTransitionType.fade,
      splash: Hero(
        tag: 'hero-profilePic',
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(StaticImages.landingPageProfilePicture),
                  fit: BoxFit.cover
              )
          ),
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
