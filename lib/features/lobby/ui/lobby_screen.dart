import 'package:fanex_flutter/common/common.dart';
import 'package:flutter/material.dart';

///----------------------------------Lobby screen--------------------------- ///
class LobbyScreen extends StatefulWidget {
  const LobbyScreen({Key? key}) : super(key: key);

  @override
  State<LobbyScreen> createState() => _LobbyScreenState();
}

class _LobbyScreenState extends State<LobbyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///Appbar
      appBar: AppBar(
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: AppSizes.dimen16),
            child: CircleAvatar(
              backgroundColor: AppColors.orange,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
