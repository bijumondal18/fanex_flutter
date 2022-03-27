import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/features/lobby/features/history_fragment/ui/history_fragment.dart';
import 'package:fanex_flutter/features/lobby/features/live_fragment/ui/live_fragment.dart';
import 'package:fanex_flutter/features/lobby/features/lobby_fragment/ui/lobby_fragment.dart';
import 'package:fanex_flutter/features/lobby/features/upcoming_fragment/ui/upcoming_fragment.dart';
import 'package:fanex_flutter/widgets/custom_header.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

///----------------------------------Lobby screen--------------------------- ///
class LobbyScreen extends StatefulWidget {
  const LobbyScreen({Key? key}) : super(key: key);

  @override
  State<LobbyScreen> createState() => _LobbyScreenState();
}

class _LobbyScreenState extends State<LobbyScreen> {
  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Scaffold(
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Container(
              color: AppColors.header,
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ///header
                      const CustomHeader(),

                      ///image slider

                      ///tabbar
                    ],
                  ),
                ),
              ),
            );
          },
        ),

        /*  bottom: const TabBar(
              labelColor: AppColors.orange,
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
          ),*/
      ),
    );
  }
}
