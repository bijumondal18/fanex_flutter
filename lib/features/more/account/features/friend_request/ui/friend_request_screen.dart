import 'package:fanex_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FriendRequestScreen extends StatelessWidget {
  const FriendRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomDefaultAppBar(title: 'Friend Requests'));
  }
}
