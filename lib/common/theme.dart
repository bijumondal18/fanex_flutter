import 'package:fanex_flutter/common/common.dart';
import 'package:flutter/material.dart';

import 'dimens.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        dividerColor: AppColors.lightGrey,
        brightness: Brightness.light,
        backgroundColor: AppColors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.transparent,
            elevation: AppSizes.elevation0,
            centerTitle: true,
            foregroundColor: AppColors.black),
        scaffoldBackgroundColor: AppColors.scaffold,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: const TextTheme(
          headline1: TextStyle(
              color: AppColors.black,
              fontSize: AppSizes.headline1,
              fontWeight: FontWeight.w700),
          headline2: TextStyle(
              color: AppColors.black,
              fontSize: AppSizes.headline2,
              fontWeight: FontWeight.w600),
          headline3: TextStyle(
              color: AppColors.black,
              fontSize: AppSizes.headline3,
              fontWeight: FontWeight.w600),
          headline4: TextStyle(
              color: AppColors.black,
              fontSize: AppSizes.headline4,
              fontWeight: FontWeight.w500),
          headline5: TextStyle(
              color: AppColors.black,
              fontSize: AppSizes.headline5,
              fontWeight: FontWeight.w500),
          headline6: TextStyle(
              color: AppColors.darkGrey,
              fontSize: AppSizes.headline6,
              fontWeight: FontWeight.w500),
          bodyText1: TextStyle(
              color: AppColors.darkGrey,
              fontSize: AppSizes.bodyText1,
              fontWeight: FontWeight.w400),
          bodyText2: TextStyle(
              color: AppColors.darkGrey,
              fontSize: AppSizes.bodyText2,
              fontWeight: FontWeight.w400),
          caption: TextStyle(
              color: AppColors.darkGrey,
              fontSize: AppSizes.caption,
              fontWeight: FontWeight.w400),
          button: TextStyle(
              color: AppColors.white,
              fontSize: AppSizes.button,
              fontWeight: FontWeight.w600),
        ));
  }

  static ThemeData get darkTheme {
    return ThemeData();
  }
}
