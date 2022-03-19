import 'package:fanex_flutter/common/common.dart';
import 'package:flutter/material.dart';

class LobbyScreen extends StatefulWidget {
  const LobbyScreen({Key? key}) : super(key: key);

  @override
  State<LobbyScreen> createState() => _LobbyScreenState();
}

class _LobbyScreenState extends State<LobbyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lobby', style: AppTheme.lightTheme.textTheme.headline5,),
      ),
    );
  }
}
