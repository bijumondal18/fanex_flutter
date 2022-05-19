import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/features/lobby/bloc/banner_slider_bloc.dart';
import 'package:fanex_flutter/features/lobby/models/BannersModel.dart';
import 'package:fanex_flutter/utils/app_helper.dart';
import 'package:fanex_flutter/widgets/carousel_slider.dart';
import 'package:fanex_flutter/widgets/custom_full_button.dart';
import 'package:fanex_flutter/widgets/custom_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/route.dart';
import '../../screens.dart';
import '../bannerRepo/banner_repo.dart';

///------------Lobby screen--------- ///

class LobbyScreen extends StatefulWidget {
  const LobbyScreen({Key? key}) : super(key: key);

  @override
  State<LobbyScreen> createState() => _LobbyScreenState();
}

class _LobbyScreenState extends State<LobbyScreen>
    with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  late TabController _tabController;
  var _isVisibleForScrollView = true;
  final int index = 0;

  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels > 0) if (_isVisibleForScrollView)
          setState(() {
            _isVisibleForScrollView = false;
          });
      } else {
        if (!_isVisibleForScrollView)
          setState(() {
            _isVisibleForScrollView = true;
          });
      }
    });
  }
late bool flag = false;
  late List<BannersModel> demoBannerModel;
  Widget build(BuildContext context) {
    print(_isVisibleForScrollView);
    return BlocProvider<BannerSliderBloc>(
      create: (context) => BannerSliderBloc(BannerRepo())..add(GetBanner()),
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowIndicator();
          return false;
        },
        child: Container(
          color: AppColors.header,
          child: SafeArea(
            child: Scaffold(
              appBar: const CustomHeader(),
              body: Stack(children: [
                LayoutBuilder(
                  builder:
                      (BuildContext context, BoxConstraints constraints) {
                    return NotificationListener<
                        OverscrollIndicatorNotification>(
                      onNotification: (overScroll) {
                        overScroll.disallowIndicator();
                        return false;
                      },
                      child: CustomScrollView(
                        controller: _scrollController,
                        slivers: <Widget>[
                          ///image slider
                          SliverToBoxAdapter(
                            child: flag==false?BlocBuilder<BannerSliderBloc,
                                    BannerSliderState>(
                                builder: (BuildContext context, state) {
                              if (state is BannerSliderIsNotLoad) {
                                flag=true;
                                return Center(
                                    child: Text(
                                  'Initial State',
                                  style:
                                      Theme.of(context).textTheme.headline1,
                                ));
                              } else if (state is BannerSliderIsLoading) {
                                return Center(
                                    child: CircularProgressIndicator());
                              } else if (state is BannerIsLoaded) {
                                print(AppHelper.getOperatingSystem().toString());
                                demoBannerModel=state.bannersList;
                                return CarouselSlider(
                                    BannerList: state.bannersList);
                              } else
                                return Center(
                                    child: Text(
                                  'Error',
                                  style:
                                      Theme.of(context).textTheme.headline1,
                                ));
                            }):CarouselSlider(BannerList: demoBannerModel)
                          ),

                          ///tabbar
                          StickyTabBar(_tabController),
                          _tabBarView(context, _tabController),
                        ],
                      ),
                    );
                  },
                ),
                Visibility(
                  visible: _tabController.index == 0
                      ? _isVisibleForScrollView
                      : false,
                  child: Padding(
                    padding: const EdgeInsets.all(AppSizes.dimen8),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: CustomFullButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            CustomPageRoute(
                                widget: const CreateContestScreen()),
                          );
                        },
                        title: 'Create Contest',
                      ),
                    ),
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _tabBarView(context, TabController tabController) {
  return SliverToBoxAdapter(
    child: Container(
      color: AppColors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: TabBarView(
        controller: tabController,
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

class StickyTabBar extends StatelessWidget {
  late TabController tabController;

  StickyTabBar(TabController tabController, {Key? key}) : super(key: key) {
    this.tabController = tabController;
  }

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
        pinned: true, delegate: Delegate(tabController));
  }
}

class Delegate extends SliverPersistentHeaderDelegate {
  late TabController tabController;

  Delegate(TabController tabController) {
    this.tabController = tabController;
  }

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
        controller: tabController,
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
