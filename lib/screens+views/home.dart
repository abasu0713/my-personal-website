

import 'package:flutter/material.dart';

class MyHomePageView extends StatelessWidget {
  const MyHomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Center(
      child: Text("Hi, I am Arko", style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white),),
    ));
  }
}