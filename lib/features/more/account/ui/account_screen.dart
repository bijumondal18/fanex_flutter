import 'package:fanex_flutter/features/more/account/features/change_password/ui/change_password_screen.dart';
import 'package:fanex_flutter/features/more/account/features/transaction_history/ui/transaction_history_screen.dart';
import 'package:flutter/material.dart';
import 'package:fanex_flutter/common/common.dart';

import '../features/my_profile/ui/profile_screen.dart';
import '../features/my_wallet/ui/wallet_screen.dart';

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
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              switch (index) {
                case 0:
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileScreen()));
                  break;

                case 1:
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WalletScreen()));
                  break;

                case 5:
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const ChangePasswordScreen()));
                  break;

                case 6:
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const TransactionHistoryScreen()));
                  break;
              }
            },
            child: ListTile(
              title: Text(items[index]),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
              ),
            ),
          );
        },
        itemCount: 7,
      ),
    );
  }
}
