

import 'package:flutter/material.dart';

class MyServicesView extends StatelessWidget {
  const MyServicesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 125, 25, 10),
            child: Text("How I can help you.", style: Theme.of(context).textTheme.headline3!
                .copyWith(color: Colors.black87)),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            child: Text("If you are looking to better yourself,"
                " I believe I might be able to be of some assistance.", style: Theme.of(context).textTheme.bodyText1!
                .copyWith(color: Colors.black87)),
          ),
        )
      ],
    );
  }
}