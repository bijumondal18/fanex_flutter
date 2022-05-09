import 'package:fanex_flutter/features/lobby/features/history_fragment/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../../common/dimens.dart';
import '../../../../../common/palette.dart';

class HistoryFragment extends StatefulWidget {
  const HistoryFragment({Key? key}) : super(key: key);

  @override
  State<HistoryFragment> createState() => _HistoryFragmentState();
}

class _HistoryFragmentState extends State<HistoryFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: teamFirst.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context,index){
            return Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.rocket, size: AppSizes.caption,),
                        Text(teamFirst[index] + " vs " + teamSecond[index]),
                        Icon(Icons.attach_money_rounded, size: AppSizes.caption,),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(AppSizes.dimen8),
                      child: Column(
                        children: [
                          LinearPercentIndicator(
                            percent: progressValue[index],
                            barRadius: Radius.circular(AppSizes.cardCornerRadius),
                            progressColor: AppColors.orange,
                            lineHeight: AppSizes.dimen8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("1", style:Theme.of(context).textTheme.caption),
                              Text("10", style:Theme.of(context).textTheme.caption),
                            ],
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text("ENTRY FEE", style: Theme.of(context).textTheme.caption),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/coins-icon.svg',
                                  width: AppSizes.caption,
                                  height: AppSizes.caption,
                                ),
                                Text(entryFee[index], style: Theme.of(context).textTheme.caption),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text("WON", style: Theme.of(context).textTheme.caption),
                            Row(
                              children: [
                                Icon(Icons.currency_rupee, size: AppSizes.caption,),
                                Text(wonAmount[index],style: Theme.of(context).textTheme.caption),
                              ],
                            )
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 65,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: AppColors.green,
                              ),
                              onPressed: () {},
                                child: Text("VIEW",
                                    style: TextStyle(
                                        fontSize: AppSizes.caption,
                                        color: AppColors.white
                                    )
                                )
                          ),
                        ),
                        Column(
                          children: [
                            Text("COMPLETED"),
                            Text("04-05-2022"),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
    }
    ));
  }
}
