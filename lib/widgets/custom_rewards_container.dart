import 'package:fanex_flutter/features/more/account/features/my_profile/ui/profile_screen.dart';
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
        borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius),
        color: AppColors.textFieldBg,
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

            Text(textDetails,style: TextStyle(fontSize: AppSizes.dimen13,fontWeight: FontWeight.w600),),
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