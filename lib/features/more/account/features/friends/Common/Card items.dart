import 'package:fanex_flutter/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../../../widgets/Custom_sort_button.dart';
import '../Models/models.dart';
import 'Common.dart';
class CardItem extends StatefulWidget {
  final int index;
  bool IsTwoButton=true;
  final String title1;
  String ? title2;
   CardItem({Key? key,required this.index,required this.IsTwoButton, required this.title1, this.title2}) : super(key: key);

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return widget.IsTwoButton == true ?  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius),
        color: AppColors.grey.withOpacity(0.1),
      ),
      margin: const EdgeInsets.symmetric(
          horizontal: AppSizes.dimen12, vertical: AppSizes.dimen4),
      padding: const EdgeInsets.all(AppSizes.dimen8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.white.withOpacity(0.5),
                radius: 22,
                child: Image.asset('assets/images/fanex-logo.png',fit: BoxFit.cover,),
              ),
              const SizedBox(width: AppSizes.dimen4,),
              Text(
                friendsName[widget.index],
                style: TextStyle(
                    fontSize: AppSizes.headline5,
                    color: AppColors.black.withOpacity(0.7),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonBlockButton(
                titleColor: AppColors.white,
                title: widget.title1,
                buttonRadius: AppSizes.cardCornerRadius,
                buttonHeight: AppSizes.smallbuttonHeight,
                buttonWidth: MediaQuery.of(context).size.width * 0.35,
                buttonOnPressed: () {print(" Request send");},
                buttonColor: AppColors.green.withOpacity(0.8),
              ),
              const SizedBox(
                height: AppSizes.dimen4,
              ),
              CommonBlockButton(
                  titleColor: AppColors.white,
                  title: '${widget.title2}',
                  buttonRadius: AppSizes.cardCornerRadius,
                  buttonHeight: AppSizes.smallbuttonHeight,
                  buttonWidth: MediaQuery.of(context).size.width * 0.35,
                  buttonOnPressed: () {print(" User Blocked");},
                  buttonColor: AppColors.green.withOpacity(0.8))
            ],
          )
        ],
      ),
    ) : Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius),
        color: AppColors.grey.withOpacity(0.1),
      ),
      margin: const EdgeInsets.symmetric(
          horizontal: AppSizes.dimen12, vertical: AppSizes.dimen8),
      padding: const EdgeInsets.all(AppSizes.dimen8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.white.withOpacity(0.5),
                radius: 22,
                child: Image.asset('assets/images/fanex-logo.png',fit: BoxFit.cover,),
              ),
              const SizedBox(width: AppSizes.dimen4,),
              Text(
                friendsName[widget.index],
                style: TextStyle(
                    fontSize: AppSizes.headline5,
                    color: AppColors.black.withOpacity(0.7),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
              CommonBlockButton(
                titleColor: AppColors.white,
                  title: widget.title1,
                  buttonRadius: AppSizes.cardCornerRadius,
                  buttonHeight: AppSizes.smallbuttonHeight,
                  buttonWidth: MediaQuery.of(context).size.width * 0.35,
                  buttonOnPressed: () {print(" User Unblocked");},
                  buttonColor: AppColors.green.withOpacity(0.8))

        ],
      ),
    );
  }
}
