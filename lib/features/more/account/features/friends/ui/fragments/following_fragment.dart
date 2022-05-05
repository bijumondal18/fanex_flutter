import 'package:flutter/material.dart';

import '../../Common/Common.dart';

class FollowingScreen extends StatefulWidget {
  const FollowingScreen({Key? key}) : super(key: key);

  @override
  State<FollowingScreen> createState() => _FollowingScreenState();
}

class _FollowingScreenState extends State<FollowingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowIndicator();
          return false;
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchBar(onPressed: () {}),
              BuildList(
                IsTwoButton: true,
                ItemCount: 4,
                title1: 'Block',
                title2: 'UnFollow',
              )
            ],
          ),
        ),
      ),
    );
  }
}
