import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/features/more/account/features/friends/Common/Common.dart';
import 'package:fanex_flutter/widgets/custom_add_friend_button.dart';
import 'package:fanex_flutter/widgets/custom_container_with_linear_percent_indicator.dart';
import 'package:fanex_flutter/widgets/custom_rankings_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChakraScreen extends StatefulWidget {
  const ChakraScreen({Key? key}) : super(key: key);

  @override
  State<ChakraScreen> createState() => _ChakraScreenState();
}

class _ChakraScreenState extends State<ChakraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBar(onPressed: () {},),
            Stack(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(AppStrings.prizeAmountText, style: Theme.of(context).textTheme.bodyText2),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/coins-icon.svg',
                                  width: AppSizes.dimen12,
                                  height: AppSizes.dimen12,
                                ),
                                Text(
                                  AppStrings.prizeAmount,
                                    style:Theme.of(context).textTheme.bodyText2,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 180,
                            width: 150,
                            child: Card(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/fanex-logo.png",),
                                  Container(
                                    height: 90,
                                    width: 90,
                                    child: Image.network("https://thumbs.dreamstime.com/b/yellow-award-ribbon-isolated-yellow-award-ribbon-isolated-white-background-d-render-114327217.jpg",
                                      fit: BoxFit.cover,),
                                  ),
                                  Spacer(),
                                  Text(AppStrings.usernameHint, style: Theme.of(context).textTheme.headline6,),
                                  Text("Since:"+ AppStrings.dateText, style: Theme.of(context).textTheme.headline6,)
                                ],
                              ),
                            ),
                          ),
                          CustomAddFriendButton(hintText: "ADD AS FRIEND"),
                        ],
                      ),
                      Column(
                        children: [
                          Text(AppStrings.chakraStartText,style: Theme.of(context).textTheme.bodyText2,),
                          Text(AppStrings.dateText, style: Theme.of(context).textTheme.bodyText2,),
                          Text(AppStrings.chakraEndText,style: Theme.of(context).textTheme.bodyText2,),
                          Text(AppStrings.dateText,style: Theme.of(context).textTheme.bodyText2,),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 70,
                  top: 70,
                  child: CircleAvatar(
                    backgroundColor: AppColors.orange,
                    radius: 30,
                    child: CircleAvatar(
                      backgroundColor: AppColors.white,
                      backgroundImage: NetworkImage(
                          "https://www.openmindnetworks.com/wp-content/uploads/2018/01/1-award.png"), //NetworkImage
                      radius: 28,
                    ), //CircleAvatar
                  ),
                ),
              ],
            ),
            CustomRankingsContainer(
              textDetails: AppStrings.cashWonText,
              countDetails: AppStrings.prizeAmount,
              iconTrailing: Icons.currency_rupee,
              iconLeading: Icons.attach_money_rounded,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.dimen8, vertical: AppSizes.dimen4),
              child: Container(
                  height: AppSizes.appBarHeight,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(
                            1.0,
                            1.0,
                          ),
                          color: AppColors.lightGrey.withOpacity(0.6),
                          spreadRadius: 2,
                          blurRadius: 20,
                        )
                      ],
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius)),
                  child: Padding(
                    padding: const EdgeInsets.all(AppSizes.dimen4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: AppSizes.dimen4),
                              child: SvgPicture.asset(
                                'assets/icons/coins-icon.svg',
                                width: AppSizes.headline4,
                                height: AppSizes.headline4,
                              ),
                            ),
                            Text(AppStrings.coinsWonText, style: Theme.of(context).textTheme.headline6,),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: AppSizes.dimen4),
                              child: SvgPicture.asset(
                                'assets/icons/coins-icon.svg',
                                width: AppSizes.headline6,
                                height: AppSizes.headline6,
                              ),
                            ),
                            Text(AppStrings.prizeAmount,style: TextStyle(fontSize: AppSizes.headline6,color: AppColors.orange),)
                          ],
                        )
                      ],
                    ),
                  )
              ),
            ),
            CustomContainerLinearPercentIndicator(
              value: 0.27,
            ),
            CustomRankingsContainer(
                textDetails: AppStrings.coinsWonText,
                countDetails: AppStrings.prizeAmount,
                iconLeading: Icons.stacked_bar_chart,
                iconTrailing: Icons.brightness_low_outlined
            ),
            CustomRankingsContainer(
                textDetails: AppStrings.friendsFollowingText,
                countDetails: AppStrings.prizeAmount,
                iconLeading: Icons.stacked_bar_chart,
                iconTrailing: null,
            ),
          ],
        ),
      ),
    );
  }
}
