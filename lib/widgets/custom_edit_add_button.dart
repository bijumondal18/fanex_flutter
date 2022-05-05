import 'package:flutter/material.dart';

import '../common/dimens.dart';
import '../common/palette.dart';

class CustomEditAddButton extends StatelessWidget {

  final String hintText;

  const CustomEditAddButton({required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 53,
      child: ElevatedButton(onPressed: () {},
          style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: AppColors.green
          ),
          child: Transform.scale(
              scale: 1.3,
              child: Text(hintText, style: const TextStyle(fontSize: AppSizes.caption),))),
    );
  }
  
}