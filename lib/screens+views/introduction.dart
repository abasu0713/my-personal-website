

import 'package:flutter/material.dart';

class MyIntroductionView extends StatelessWidget {
  const MyIntroductionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 50, 25, 10),
            child: Text("How I can help you.", style: Theme.of(context).textTheme.headline3!
                .copyWith(color: Colors.black87)),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Divider(height: 5, color: Colors.blue),
                Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    child: Text("Let me tell you something right at the start. I have hopelessly, hilariously, "
                        "and seldom sadly failed at so many things! So I can tell you from personal experience, "
                        "that I am no stranger to failures. And who am I kidding. I am not the 'shrug it or walk "
                        "it off' of kind of guy either.", style: Theme.of(context).textTheme.bodyText1!
                        .copyWith(color: Colors.black87))),
                Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    child: Text("And failures bothered me! A lot! It should right! No?", style: Theme.of(context).textTheme.bodyText1!
                        .copyWith(color: Colors.black87))),
                Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    child: Text("A few years ago I realized that in a universe of ever increasing entropy, "
                        "it's only natural that we fail (a lot!). It's computationally unfathomable the "
                        "sheer amount of qauntized information that allows an upstream of biological eddy "
                        "that makes it possible for you and I to comprehend the meaning of our existence*. "
                        "And when you look at that scale of things with a reasonable rationale, to "
                        "compare yourself and the possibility of your success at about anything, right at "
                        "the first go? It hilarious the kind of hubris that makes up such behavior. ",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.black87))),
                Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    child: Text("And once you have that reality check? It's nothing short of what other's may call "
                        "an absolute fucking miracle! At this point, you see the nature of things for how they are, "
                        "and not how you have been taught to believe. Or so you tell yourself, so as to maintain "
                        "a firm grip on your sanity! Additionally, it gives you a clarity! Over sorts of things that "
                        "your decade older self, didn't think was possible. Probably even laughed at it! ", style: Theme.of(context).textTheme.bodyText1!
                        .copyWith(color: Colors.black87))),
                Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    child: Text("A clarity about what you ask? About the place I have in this world and what I may "
                        "have to offer! Not for purpose! Fuck purpose! Pardon my language. No really! I can't tell you what "
                        "the clarity is for?! I will once I know! But for now all that I know is that, like those fundamental "
                        "particles, the fermions, the gluons, ", style: Theme.of(context).textTheme.bodyText1!
                        .copyWith(color: Colors.black87))),
              ],
            )
          ),
        )
      ],
    );
  }
}