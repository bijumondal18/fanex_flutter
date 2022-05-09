import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../common/dimens.dart';
import '../common/palette.dart';
import '../common/strings.dart';

class CustomContainerLinearPercentIndicator extends StatelessWidget {

  final double value;


  const CustomContainerLinearPercentIndicator({ required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Card(
          child: Padding(
            padding:  EdgeInsets.all(AppSizes.dimen4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.percent_rounded,color: AppColors.green,),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppStrings.averageFinishingPositionText,
                        style: TextStyle(fontSize: AppSizes.bodyText1,),textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(AppSizes.dimen16),
                        child: SizedBox(
                            child: Column(
                              children: [
                                LinearPercentIndicator(
                                  percent: value,
                                  progressColor: AppColors.orange,
                                  lineHeight: AppSizes.dimen12,
                                  center: Text((value*100).toString(), style: TextStyle(fontSize: AppSizes.caption,),),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("0%", style: TextStyle(fontSize: AppSizes.bodyText2,)),
                                    Text("100%", style: TextStyle(fontSize: AppSizes.bodyText2,)),
                                  ],
                                )
                              ],
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
