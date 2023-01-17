import 'package:flutter/material.dart';

import '../common/app_sizes.dart';
import '../common/app_colors.dart';


class CustomCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color? bgColor;

  const CustomCard(
      {Key? key, required this.child, this.padding, this.margin, this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: padding ??
          const EdgeInsets.fromLTRB(
              AppSizes.kDefaultPadding,
              AppSizes.kDefaultPadding,
              AppSizes.kDefaultPadding,
              AppSizes.kDefaultPadding),
      margin: margin ??
          const EdgeInsets.fromLTRB(
              AppSizes.kDefaultPadding/2,
              AppSizes.kDefaultPadding/2,
              AppSizes.kDefaultPadding/2,
              AppSizes.kDefaultPadding/2),
      decoration: BoxDecoration(
          color: bgColor ?? AppColors.white,
          border: Border.all(width: 0.2, color: AppColors.grey),
          borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius/2),
          boxShadow: const [
            BoxShadow(
                offset: Offset(-2, -2),
                blurRadius: 5.0,
                color: AppColors.shimmer),
            BoxShadow(
                offset: Offset(2, 2),
                blurRadius: 5.0,
                color: AppColors.shimmer),
          ]),
      child: child,
    );
  }
}
