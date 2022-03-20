import 'package:flutter/material.dart';

class LobbyFragment extends StatefulWidget {
  const LobbyFragment({Key? key}) : super(key: key);

  @override
  State<LobbyFragment> createState() => _LobbyFragmentState();
}

class _LobbyFragmentState extends State<LobbyFragment> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Lobby fragment'),
      ),
    );
  }
}
