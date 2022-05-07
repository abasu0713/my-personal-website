

import 'package:flutter/material.dart';

class MyIntroductionView extends StatelessWidget {
  const MyIntroductionView({Key? key, required this.homeScreenPageController}) : super(key: key);

  final PageController homeScreenPageController;

  final String title = "Introduction";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 175, horizontal: 25),
      child: Center(
        child: ListView(
          children: <Widget>[
            Text("I'm arko basu,", style: Theme.of(context).textTheme.headline2!
                .copyWith(color: Colors.black87)),
            const Divider(height: 10),
            const SizedBox(height: 25),
            Text("A heuristic software engineer who is extremely passionate "
                "about learning new technologies.",
                style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.black87)),
            const SizedBox(height: 50),
            ElevatedButton(
                onPressed: (){
                  if(homeScreenPageController.hasClients){
                    homeScreenPageController.nextPage(
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.easeIn);
                  }
                },
                child: Text("Learn more", style: Theme.of(context).textTheme.headline4!
                    .copyWith(color: Colors.white)))
          ],
        ),
      ),
    );
  }
}