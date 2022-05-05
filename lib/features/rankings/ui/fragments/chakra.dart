import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/features/more/account/features/friends/Common/Common.dart';
import 'package:fanex_flutter/widgets/custom_add_friend_button.dart';
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
                            Text(AppStrings.prizeAmountText, style: Theme.of(context).textTheme.bodyText2,),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/coins-icon.svg',
                                  width: AppSizes.dimen12,
                                  height: AppSizes.dimen12,
                                ),
                                Text(AppStrings.prizeAmount, style: TextStyle(fontSize: AppSizes.bodyText2,color: AppColors.orange),),
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
                      Container(
                        child: Column(
                          children: [
                            Text(AppStrings.chakraStartText,),
                            Text(AppStrings.dateText, style: Theme.of(context).textTheme.headline6,),
                            Text(AppStrings.chakraEndText),
                            Text(AppStrings.dateText,style: Theme.of(context).textTheme.headline6,),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 60,
                  top: 70,
                  child: CircleAvatar(
                    backgroundColor: AppColors.orange,
                    radius: 32,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.openmindnetworks.com/wp-content/uploads/2018/01/1-award.png"), //NetworkImage
                      radius: 30,
                    ), //CircleAvatar
                  ),
                ),
              ],
            ),
            Container(
              height: AppSizes.appBarHeight,
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(AppSizes.dimen4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.attach_money_rounded, color: AppColors.green,),
                          Text(AppStrings.cashWonText, style: Theme.of(context).textTheme.headline6,),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.currency_rupee, color: AppColors.orange,size: AppSizes.headline6,),
                          Text(AppStrings.prizeAmount,style: TextStyle(fontSize: AppSizes.headline6,color: AppColors.orange),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
                height: AppSizes.appBarHeight,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(AppSizes.dimen4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/coins-icon.svg',
                              width: AppSizes.headline4,
                              height: AppSizes.headline4,
                            ),
                            Text(AppStrings.coinsWonText, style: Theme.of(context).textTheme.headline6,),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/coins-icon.svg',
                              width: AppSizes.headline6,
                              height: AppSizes.headline6,
                            ),
                            Text(AppStrings.prizeAmount,style: TextStyle(fontSize: AppSizes.headline6,color: AppColors.orange),)
                          ],
                        )
                      ],
                    ),
                  ),
                )
            ),
            Container(
                height: AppSizes.mainHeaderHeight,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(AppSizes.dimen4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.percent_rounded,color: AppColors.green,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(AppStrings.averageFinishingPositionText,
                                style: TextStyle(fontSize: AppSizes.bodyText2,),textAlign: TextAlign.center,),
                             SizedBox(
                                 child: LinearProgressIndicator(value: 0.27,minHeight: AppSizes.dimen8,color: AppColors.orange,)
                             ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            ),
            Container(
                height: AppSizes.appBarHeight,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(AppSizes.dimen4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.stacked_bar_chart,color: AppColors.green,),
                            Text(AppStrings.coinsEarnedText, style: Theme.of(context).textTheme.headline6,),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/coins-icon.svg',
                              width: AppSizes.headline6,
                              height: AppSizes.headline6,
                            ),
                            Text(AppStrings.prizeAmount,style: TextStyle(fontSize: AppSizes.headline6,color: AppColors.orange),)
                          ],
                        )
                      ],
                    ),
                  ),
                )
            ),
            Container(
                height: AppSizes.appBarHeight,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(AppSizes.dimen4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.group_rounded,color: AppColors.green,),
                            Text(AppStrings.friendsFollowingText, style: Theme.of(context).textTheme.headline6,),
                          ],
                        ),
                        Text(AppStrings.prizeAmount,style: TextStyle(fontSize: AppSizes.headline6,color: AppColors.orange),)
                      ],
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
