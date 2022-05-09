import 'package:flutter/material.dart';

import '../../../../../../common/common.dart';

class CommonBlockButton extends StatelessWidget {
  final String title;
  final double buttonRadius;
  final double buttonHeight;
  final double buttonWidth;
  final Color buttonColor;
  final Color titleColor;
  final VoidCallback buttonOnPressed;

  const CommonBlockButton(
      {Key? key,
      required this.title,
      required this.buttonRadius,
      required this.buttonHeight,
      required this.buttonWidth,
      required this.buttonOnPressed,
      required this.buttonColor,
      required this.titleColor})
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
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.dimen12),
            child: Text(
              title,
              style:  TextStyle(
                  fontSize: AppSizes.smallbutton, color: titleColor),
            ),
          ))),
    );
  }
}
