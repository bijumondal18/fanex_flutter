import 'package:flutter/material.dart';

import '../common/dimens.dart';
import '../common/palette.dart';

class CustomAddFriendButton extends StatelessWidget {

  final String hintText;

  const CustomAddFriendButton({required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 160,
      child: ElevatedButton(onPressed: () {},
          style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: AppColors.green
          ),
          child: Text(hintText, style: const TextStyle(fontSize: AppSizes.button))),
    );
  }
}
