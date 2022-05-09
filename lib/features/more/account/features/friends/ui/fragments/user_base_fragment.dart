import 'package:fanex_flutter/features/more/account/features/friends/Common/Build%20List.dart';
import 'package:fanex_flutter/features/more/account/features/friends/Common/Common.dart';
import 'package:fanex_flutter/features/more/account/features/friends/Models/models.dart';
import 'package:flutter/material.dart';

class UserBaseScreen extends StatefulWidget {
  const UserBaseScreen({Key? key}) : super(key: key);

  @override
  State<UserBaseScreen> createState() => _UserBaseScreenState();
}

class _UserBaseScreenState extends State<UserBaseScreen> {
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
                ItemCount: friendsName.length,
                title1: 'Send Request',
                title2: 'Block',
              )
            ],
          ),
        ),
      ),
    );
  }
}


