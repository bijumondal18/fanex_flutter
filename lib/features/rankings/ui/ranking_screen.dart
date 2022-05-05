import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/features/rankings/ui/fragments/chakra.dart';
import 'package:fanex_flutter/features/rankings/ui/fragments/user_chakra_screen.dart';
import 'package:flutter/material.dart';

import '../../../common/dimens.dart';

class RankingScreen extends StatefulWidget {
  const RankingScreen({Key? key}) : super(key: key);

  @override
  State<RankingScreen> createState() => _RankingScreenState();
}

class _RankingScreenState extends State<RankingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: AppSizes.elevation0,
          title: const Text('Friends'),
          bottom: const PreferredSize(
            preferredSize: Size(double.infinity, AppSizes.appBarHeight),
            child: ColoredBox(
              color: Colors.white,
              child: TabBar(indicator: BoxDecoration(color: AppColors.orange),
                labelColor: AppColors.white,
                unselectedLabelColor: AppColors.grey,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    text: 'Chakra',
                  ),
                  Tab(
                    text: 'Username',
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            ChakraScreen(),
            UserChakraScreen(),
          ],
        ),
      ),
    );
  }
}
