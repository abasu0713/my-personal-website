
import 'package:flutter/material.dart';

import '../utils/static_images.dart';

class MyLandingPage extends StatefulWidget {
  const MyLandingPage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title = "Arko's Landing Page";

  @override
  State<MyLandingPage> createState() => _MyLandingPageState();
}

class _MyLandingPageState extends State<MyLandingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          /*Container(
            width: MediaQuery.of(context).size.width/2,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(StaticImages.landingPageProfilePicture),
                    fit: BoxFit.fitWidth
                )
            ),
          ),*/
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(StaticImages.landingPageProfilePicture),
                      fit: BoxFit.fitWidth
                  )
              ),
              width: MediaQuery.of(context).size.width/2,
          ),
          Expanded(child: Center(
            child: Text("Hi, I am Arko", style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white),),
          ))
        ],
      )  // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
