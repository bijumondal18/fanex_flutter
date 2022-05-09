import 'package:flutter/material.dart';

import '../common/dimens.dart';
import '../common/palette.dart';
import '../common/strings.dart';

class CustomAddCashWithdrawButton extends StatelessWidget {

  final String hintText;

  const CustomAddCashWithdrawButton({Key? key, required this.hintText}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.buttonHeight,
      width: AppSizes.dimen127,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: AppColors.lightGrey,
          ),
          child:  Text(
            hintText
          )),
    );
  }
}