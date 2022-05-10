import 'package:fanex_flutter/features/lobby/features/history_fragment/models/model.dart';
import 'package:fanex_flutter/widgets/custom_view_button.dart';
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
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.dimen8, vertical: AppSizes.dimen4),
              child: Container(
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
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("🚀" + teamFirst[index] + " vs " + teamSecond[index]+ "💰"),
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
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: AppSizes.dimen8),
                      child: Row(
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
                          CustomViewButton(hintText: 'VIEW',),
                          Column(
                            children: [
                              Text("COMPLETED", style: Theme.of(context).textTheme.caption),
                              Text("04-05-2022", style: Theme.of(context).textTheme.caption),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
    }
    ));
  }
}
