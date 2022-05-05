import 'package:flutter/material.dart';

import '../../Common/Common.dart';



class BlockedScreen extends StatefulWidget {
  const BlockedScreen({Key? key}) : super(key: key);

  @override
  State<BlockedScreen> createState() => _BlockedScreenState();
}

class _BlockedScreenState extends State<BlockedScreen> {
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
            children: [SearchBar(onPressed: () {}),BuildList(IsTwoButton: false,ItemCount:3,title1: 'Send Request',)],
          ),
        ),
      ),
    );
  }
}
