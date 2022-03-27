import 'package:fanex_flutter/common/route.dart';
import 'package:fanex_flutter/features/more/account/features/change_password/ui/change_password_screen.dart';
import 'package:fanex_flutter/features/more/account/features/follow_fanex/ui/follow_fanex_screen.dart';
import 'package:fanex_flutter/features/more/account/features/friend_request/ui/friend_request_screen.dart';
import 'package:fanex_flutter/features/more/account/features/friends/ui/friends_screen.dart';
import 'package:fanex_flutter/features/more/account/features/transaction_history/ui/transaction_history_screen.dart';
import 'package:fanex_flutter/widgets/widgets.dart';
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
    'My Profile',
    'My Wallet',
    'Friend Requests',
    'Follow Fanex',
    'Friends',
    'Change Pin/Password',
    'Transaction History'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomDefaultAppBar(title: 'Account'),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  switch (index) {
                    case 0:
                      Navigator.push(context,
                          CustomPageRoute(widget: const ProfileScreen()));
                      break;

                    case 1:
                      Navigator.push(context,
                          CustomPageRoute(widget: const WalletScreen()));
                      break;

                    case 2:
                      Navigator.push(context,
                          CustomPageRoute(widget: const FriendRequestScreen()));
                      break;

                    case 3:
                      Navigator.push(context,
                          CustomPageRoute(widget: const FollowFanexScreen()));
                      break;

                    case 4:
                      Navigator.push(context,
                          CustomPageRoute(widget: const FriendsListScreen()));
                      break;

                    case 5:
                      Navigator.push(
                          context,
                          CustomPageRoute(
                              widget: const ChangePasswordScreen()));
                      break;

                    case 6:
                      Navigator.push(
                          context,
                          CustomPageRoute(
                              widget: const TransactionHistoryScreen()));
                      break;
                  }
                },
                child: ListTile(
                  visualDensity:
                      const VisualDensity(horizontal: 0, vertical: -4),
                  title: Text(items[index]),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                  ),
                ),
              );
            },
            itemCount: 7,
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            });
      }),
    );
  }
}
