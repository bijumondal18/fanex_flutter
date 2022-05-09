import 'package:flutter/material.dart';

import '../common/dimens.dart';
import '../common/palette.dart';

class CustomRewardsContainer extends StatelessWidget{

  final String textDetails;
  final String imageUrls;

  const CustomRewardsContainer({required this.textDetails, required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.dimen60,
      margin: EdgeInsets.all(AppSizes.dimen12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius),
        color: AppColors.grey.withOpacity(0.3),
      ),
      child: Padding(
        padding: EdgeInsets.all(AppSizes.dimen8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              child: Image.network(imageUrls,
                fit: BoxFit.cover,),
              borderRadius: BorderRadius.circular(AppSizes.dimen8),
            ),

            Text(textDetails,style: TextStyle(fontSize: AppSizes.dimen16,fontWeight: FontWeight.w600),),
            IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                color: AppColors.green,
                onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

}