import 'package:flutter/material.dart';

import '../common/dimens.dart';
import '../common/palette.dart';
import '../common/strings.dart';

class CustomContainerLinearProgressIndicator extends StatelessWidget {

  final double value;

  const CustomContainerLinearProgressIndicator({ required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
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
                        padding: const EdgeInsets.all(AppSizes.dimen8),
                        child: SizedBox(
                            child: Column(
                              children: [
                                LinearProgressIndicator(
                                  backgroundColor: AppColors.grey,
                                  value: value,
                                  minHeight: AppSizes.dimen8,
                                  color: AppColors.orange,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("0%", style: TextStyle(fontSize: AppSizes.bodyText2,)),
                                    Text("100%", style: TextStyle(fontSize: AppSizes.bodyText2,)),
                                  ],
                                )
                              ],
                            )),
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
