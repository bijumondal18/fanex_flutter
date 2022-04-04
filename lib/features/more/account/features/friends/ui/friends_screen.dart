import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/features/more/account/features/friends/ui/fragments/blocked_fragment.dart';
import 'package:fanex_flutter/features/more/account/features/friends/ui/fragments/following_fragment.dart';
import 'package:fanex_flutter/features/more/account/features/friends/ui/fragments/user_base_fragment.dart';
import 'package:fanex_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FriendsListScreen extends StatelessWidget {
  const FriendsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: AppSizes.elevation0,
          title: const Text('Friends'),
          bottom: const PreferredSize(
            preferredSize: Size(double.infinity, AppSizes.appBarHeight),
            child: ColoredBox(
              color: Colors.white,
              child: TabBar(
                tabs: [
                  Tab(
                    text: 'User Base',
                  ),
                  Tab(
                    text: 'Following',
                  ),
                  Tab(
                    text: 'Blocked',
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            UserBaseScreen(),
            FollowingScreen(),
            BlockedScreen(),
          ],
        ),
      ),
    );
  }
}
