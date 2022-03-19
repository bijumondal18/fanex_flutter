import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {

  final List<String> items = [
    'Profile',
    'Wallet',
    'Friend requests',
    'Follow Fanex',
    'Friends',
    'Change pin/password',
    'Transaction history'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
    );
  }
}
