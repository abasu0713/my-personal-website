

import 'package:flutter/material.dart';
import 'package:my_website/screens+views/services.dart';

import 'introduction.dart';

class MyHomePageView extends StatelessWidget {
  const MyHomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return SizedBox(
      width: MediaQuery.of(context).size.width/2,
      child: PageView(
        controller: controller,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          MyIntroductionView(homeScreenPageController: controller),
          const MyServicesView(),
          Center(
              child: Text("This is going to be my current projects space",
                  style: Theme.of(context).textTheme.headline4!
                      .copyWith(color: Colors.black)
              )
          ),
          Center(
              child: Text("This is going to be my contacts page view",
                  style: Theme.of(context).textTheme.headline4!
                      .copyWith(color: Colors.black)
              )
          )
        ],
      ),
    );
  }
}