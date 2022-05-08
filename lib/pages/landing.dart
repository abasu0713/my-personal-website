
import 'package:flutter/material.dart';
import 'package:my_website/screens+views/title.dart';

import '../screens+views/introduction.dart';
import '../screens+views/new_introduction.dart';
import '../utils/static_images.dart';

class MyLandingPage extends StatefulWidget {
  const MyLandingPage({Key? key}) : super(key: key);

  final String title = "Landing Page";

  @override
  _MyLandingPageState createState() => _MyLandingPageState();
}

class _MyLandingPageState extends State<MyLandingPage>{

  late PageController _pageController;
  @override
  void initState(){
    _pageController = PageController();
    super.initState();
  }

  Widget _getLandscapeOrientationView(BuildContext context){
    return Row(
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
        SizedBox(
          width: MediaQuery.of(context).size.width/2,
          child: PageView(
            controller: _pageController,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              MyTitleView(homeScreenPageController: _pageController),
              MyIntroductionNewView(homeScreenPageController: _pageController),
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
          )
        )
      ],
    );
  }

  Widget _getPortraitOrientationView(BuildContext context){
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          const SliverAppBar(
          expandedHeight: 250.0,
          stretch: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Image(
                image: AssetImage(StaticImages.landingPageProfilePicture),
                fit: BoxFit.fitWidth
            ),
          ),
        )];
      },
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _pageController,
        children: [
          MyTitleView(homeScreenPageController: _pageController),
          MyIntroductionNewView(homeScreenPageController: _pageController)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: OrientationBuilder(
          builder: (context, currentOrientation){
            if (currentOrientation == Orientation.landscape){
              return _getLandscapeOrientationView(context);
            }
            return _getPortraitOrientationView(context);
          },
        )
        /*Row(
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
        )*/  // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

