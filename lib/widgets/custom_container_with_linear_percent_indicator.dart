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
                        style: Theme.of(context).textTheme.bodyText1,textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(AppSizes.dimen16),
                        child: Container(
                            child: Column(
                              children: [
                                LinearPercentIndicator(
                                  percent: value,
                                  barRadius: Radius.circular(AppSizes.cardCornerRadius),
                                  progressColor: AppColors.orange,
                                  lineHeight: AppSizes.dimen12,
                                  center: Text((value*100).toString() + " % ",
                                      style:Theme.of(context).textTheme.caption),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("0%", style:Theme.of(context).textTheme.bodyText2),
                                    Text("100%", style:Theme.of(context).textTheme.bodyText2),
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
          )
      ),
    );
  }
}
