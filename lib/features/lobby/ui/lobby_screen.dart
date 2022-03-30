import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/widgets/carousel_slider.dart';
import 'package:fanex_flutter/widgets/custom_header.dart';
import 'package:flutter/material.dart';

///------------Lobby screen--------- ///

class LobbyScreen extends StatefulWidget {
  const LobbyScreen({Key? key}) : super(key: key);

  @override
  State<LobbyScreen> createState() => _LobbyScreenState();
}

class _LobbyScreenState extends State<LobbyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  ///header
                  CustomHeader(),

                  SizedBox(height: AppSizes.dimen16),

                  ///image slider
                  CarouselSlider(),

                  ///tabbar
                ],
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
    );
  }
}
