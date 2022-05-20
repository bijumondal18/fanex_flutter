import 'package:fanex_flutter/common/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class CustomCircleIndicator extends StatelessWidget {
  const CustomCircleIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey.withOpacity(0.5),
      body: Center(
          child: Platform.isAndroid
              ? CircularProgressIndicator(
                  color: AppColors.orange,
                )
              : CupertinoActivityIndicator(
                  color: AppColors.orange,
                )
          ),
    );
  }
}
