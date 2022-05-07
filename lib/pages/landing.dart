
import 'package:flutter/material.dart';

import '../screens+views/home_screen.dart';
import '../utils/static_images.dart';

class MyLandingPage extends StatelessWidget {
  const MyLandingPage({Key? key}) : super(key: key);

  final String title = "Landing Page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          children: <Widget>[
            Hero(
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(StaticImages.landingPageProfilePicture),
                        fit: BoxFit.cover
                    )
                ),
                width: MediaQuery.of(context).size.width/2,
              ),
              tag: 'hero-profilePic',
            ),
            const MyHomePageView()
          ],
        )  // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

