import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/widgets/carousel_slider.dart';
import 'package:fanex_flutter/widgets/custom_full_button.dart';
import 'package:fanex_flutter/widgets/custom_header.dart';
import 'package:flutter/material.dart';

import '../../../common/route.dart';
import '../../screens.dart';

///------------Lobby screen--------- ///

class LobbyScreen extends StatefulWidget {
  const LobbyScreen({Key? key}) : super(key: key);

  @override
  State<LobbyScreen> createState() => _LobbyScreenState();
}

class _LobbyScreenState extends State<LobbyScreen> {
  @override
  final ScrollController _controller= ScrollController();
  var  _isVisible=true;
  void initState(){
    super.initState();
    _controller.addListener(() {
      if(_controller.position.atEdge)
        {
          if(_controller.position.pixels> 0)
            if(_isVisible)
              setState(() {
                _isVisible = false;
              });
        }
      else{
        if(!_isVisible)
          setState(() {
            _isVisible=true;
          });
      }
    });
  }
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overScroll) {
        overScroll.disallowIndicator();
        return false;
      },
      child: DefaultTabController(
        length: 4,
        child: Container(
          color: AppColors.header,
          child: SafeArea(
            child: Scaffold(
              appBar: const CustomHeader(),
              body: Stack(
                children: [LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return NotificationListener<OverscrollIndicatorNotification>(
                      onNotification: (overScroll) {
                        overScroll.disallowIndicator();
                        return false;
                      },
                      child: CustomScrollView(
                        controller: _controller,
                        slivers: <Widget>[
                          ///image slider
                          const SliverToBoxAdapter(child: CarouselSlider()),

                          ///tabbar
                          const SteakyTabBar(),
                          _tabBarView(context),
                        ],
                      ),
                    );
                  },
                ),
                Visibility(visible: _isVisible,
                  child: Padding(
                    padding: const EdgeInsets.all(AppSizes.dimen8),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: CustomFullButton(onPressed: (){Navigator.push(
                        context,
                        CustomPageRoute(
                            widget: const CreateContestScreen()),
                      );},title: 'Creat Contest',),
                    ),
                  ),
                )]
              ),

            ),
          ),
        ),
      ),
    );
  }
}

Widget _tabBarView(context) {
  return SliverToBoxAdapter(
    child: Container(
      color: AppColors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const TabBarView(
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

class SteakyTabBar extends StatelessWidget {
  const SteakyTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(pinned: true, delegate: Delegate());
  }
}

class Delegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: BoxDecoration(color: AppColors.white, boxShadow: [
        BoxShadow(
            color: AppColors.black.withOpacity(0.1),
            blurRadius: 1,
            spreadRadius: 2)
      ]),
      child: TabBar(
        labelColor: AppColors.white,
        isScrollable: false,
        indicator: BoxDecoration(
          color: AppColors.orange,
        ),
        unselectedLabelColor: AppColors.lightGrey,
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
    );
  }

  @override
  double get maxExtent => 48;

  @override
  double get minExtent => 48;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
