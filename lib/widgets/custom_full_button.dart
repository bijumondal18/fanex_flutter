import 'package:flutter/material.dart';
import 'package:fanex_flutter/common/common.dart';

class CustomFullButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const CustomFullButton(
      {Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: AppColors.green,
        minimumSize: const Size.fromHeight(AppSizes.buttonHeight),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTheme.lightTheme.textTheme.button,
      ),
    );
  }
}
