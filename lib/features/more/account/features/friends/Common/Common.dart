import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../../../../../common/common.dart';
import '../../../../../../widgets/widgets.dart';

class CommonBlockButton extends StatelessWidget {
  final String title;
  final double buttonRadius;
  final double buttonHeight;
  final double buttonWidth;
  final Color buttonColor;
  final VoidCallback buttonOnPressed;

  const CommonBlockButton(
      {Key? key,
      required this.title,
      required this.buttonRadius,
      required this.buttonHeight,
      required this.buttonWidth,
      required this.buttonOnPressed,
      required this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonOnPressed,
      child: Container(
          height: buttonHeight,
          width: buttonWidth,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(buttonRadius),
          ),
          child: Center(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.dimen12),
            child: Text(
              title,
              style: TextStyle(fontSize: AppSizes.smallbutton,color: AppColors.white),
            ),
          ))),
    );
  }
}

class SearchBar extends StatelessWidget {
  final VoidCallback onPressed;

  SearchBar({Key? key, required this.onPressed}) : super(key: key);

  @override
  final TextEditingController searchController = TextEditingController();

  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: AppSizes.dimen12,
      ),
      child: CustomTextField(
        hintText: AppStrings.SearchText,
        obscureText: false,
        controller: searchController,
        icon: const Icon(Icons.search),
      ),
    );
  }
}
