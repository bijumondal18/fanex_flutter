import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/features/lobby/features/history_fragment/ui/history_fragment.dart';
import 'package:fanex_flutter/features/lobby/features/live_fragment/ui/live_fragment.dart';
import 'package:fanex_flutter/features/lobby/features/lobby_fragment/ui/lobby_fragment.dart';
import 'package:fanex_flutter/features/lobby/features/upcoming_fragment/ui/upcoming_fragment.dart';
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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        ///Appbar
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: AppSizes.dimen16),
              child: CircleAvatar(
                backgroundColor: AppColors.orange,
              ),
            )
          ],

          ///Tab Bar (eg. Lobby, Upcoming, Live and History)
          bottom: const TabBar(
            labelColor: AppColors.orange,
            // labelStyle: TextStyle(fontSize: AppSizes.headline6,fontWeight: FontWeight.w800),
            // unselectedLabelStyle: TextStyle(fontSize: AppSizes.bodyText2,fontWeight: FontWeight.w400),
            unselectedLabelColor: AppColors.darkGrey,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: AppColors.orange,
            tabs: [
              Tab(
                text: 'Lobby',
              ),
              Tab(
                text: 'Upcoming',
              ),
              Tab(
                text: 'Live',
              ),
              Tab(
                text: 'History',
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            LobbyFragment(),
            UpcomingFragment(),
            LiveFragment(),
            HistoryFragment()
          ],
        ),
      ),
    );
  }
}
