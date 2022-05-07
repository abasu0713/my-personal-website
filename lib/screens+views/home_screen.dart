

import 'package:flutter/material.dart';

class MyHomePageView extends StatelessWidget {
  const MyHomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController _controller = PageController();
    return SizedBox(
      width: MediaQuery.of(context).size.width/2,
      child: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Center(
              child: Text("This is going to be my introduction page view",
                  style: Theme.of(context).textTheme.headline4!
                      .copyWith(color: Colors.white)
              )
          ),
          Center(
              child: Text("This is going to be my services page view",
                  style: Theme.of(context).textTheme.headline4!
                      .copyWith(color: Colors.white)
              )
          ),
          Center(
              child: Text("This is going to be my current projects space",
                  style: Theme.of(context).textTheme.headline4!
                      .copyWith(color: Colors.white)
              )
          ),
          Center(
              child: Text("This is going to be my contacts page view",
                  style: Theme.of(context).textTheme.headline4!
                      .copyWith(color: Colors.white)
              )
          )
        ],
      ),
    );
  }
}