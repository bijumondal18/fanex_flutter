import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/features/create_contest/ui/create_contest_screen.dart';
import 'package:fanex_flutter/features/lobby/ui/lobby_screen.dart';
import 'package:fanex_flutter/features/more/ui/more_screen.dart';
import 'package:fanex_flutter/features/rankings/ui/ranking_screen.dart';
import 'package:fanex_flutter/features/rewards/ui/reward_screen.dart';
import 'package:flutter/material.dart';

import 'common/palette.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {

  int currentIndex = 0;
  final List pages = [
    const LobbyScreen(),
    const RewardScreen(),
    const CreateContestScreen(),
    const RankingScreen(),
    const MoreScreen()
  ];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        onTap: onTap,
        currentIndex: currentIndex,
        backgroundColor: AppColors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.orange,
        unselectedItemColor: AppColors.lightGrey,
        selectedFontSize: AppSizes.bodyText1,
        unselectedFontSize: AppSizes.bodyText1,
        items: const [
          BottomNavigationBarItem(
              label: 'Lobby',
              icon: Icon(Icons.dashboard_outlined),
              activeIcon: Icon(Icons.dashboard),),

          BottomNavigationBarItem(
            label: 'Rewards',
            icon: Icon(Icons.request_page_outlined),
            activeIcon: Icon(Icons.request_page),),

          BottomNavigationBarItem(
            label: 'Create',
            icon: Icon(Icons.add_box_outlined),
            activeIcon: Icon(Icons.add_box_rounded),),

          BottomNavigationBarItem(
            label: 'Rankings',
            icon: Icon(Icons.request_page_outlined),
            activeIcon: Icon(Icons.request_page),),

          BottomNavigationBarItem(
            label: 'More',
            icon: Icon(Icons.horizontal_split_outlined),
            activeIcon: Icon(Icons.horizontal_split_sharp),),
        ],
      ),
    );
  }
}

