import 'package:fanex_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FriendsListScreen extends StatelessWidget {
  const FriendsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomDefaultAppBar(title: 'Friends')
    );
  }
}
