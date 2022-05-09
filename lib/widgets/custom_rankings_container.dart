import 'package:flutter/material.dart';

import '../common/dimens.dart';
import '../common/palette.dart';
import '../common/strings.dart';

class CustomRankingsContainer extends StatelessWidget {

  final IconData iconLeading;
  final IconData? iconTrailing;
  final String textDetails;
  final String countDetails;

  const CustomRankingsContainer({
    required this.textDetails,
    required this.countDetails,
    required this.iconLeading,
    this.iconTrailing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  Icon(iconLeading, color: AppColors.green,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppSizes.dimen4),
                    child: Text(textDetails, style: Theme.of(context).textTheme.headline6,),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(iconTrailing, color: AppColors.orange,size: AppSizes.headline6,),
                  Text(countDetails,style: TextStyle(fontSize: AppSizes.headline6,color: AppColors.orange),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}