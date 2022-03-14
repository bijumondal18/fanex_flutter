import 'package:fanex_flutter/common/common.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;

  const CustomTextField({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: AppSizes.dimen8),
      width: MediaQuery.of(context).size.width,
      height: AppSizes.textFieldHeight,
      child: TextField(
        cursorColor: AppColors.black,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTheme.lightTheme.textTheme.bodyText1,
          filled: true,
          fillColor: AppColors.textFieldBg,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius)),
        ),
      ),
    );
  }
}
