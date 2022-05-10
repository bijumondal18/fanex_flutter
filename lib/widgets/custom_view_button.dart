import 'package:flutter/material.dart';

import '../common/dimens.dart';
import '../common/palette.dart';
class CustomViewButton extends StatelessWidget {

  final String hintText;

  const CustomViewButton({required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: AppColors.green,
          ),
          onPressed: () {},
          child: Text(hintText,
              style: TextStyle(
                  fontSize: AppSizes.caption,
                  color: AppColors.white
              )
          )
      ),
    );
  }
}
