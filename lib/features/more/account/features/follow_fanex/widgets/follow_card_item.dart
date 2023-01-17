import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../common/app_sizes.dart';
import '../../../../../../common/app_colors.dart';
import '../../../../../../common/theme.dart';

class FollowCardItem extends StatelessWidget {
  final String title;
  final FaIcon icon;
  final VoidCallback onPressed;
  final Color cardBgColor;

  const FollowCardItem(
      {Key? key,
      required this.title,
      required this.icon,
      required this.onPressed,
      required this.cardBgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          left: AppSizes.kDefaultPadding,
          right: AppSizes.kDefaultPadding,
          bottom: AppSizes.dimen12),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: cardBgColor,
          borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius)),
      child: InkWell(
        onTap: onPressed,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(AppSizes.dimen8),
              child: CircleAvatar(
                maxRadius: 28,
                minRadius: 28,
                backgroundColor: AppColors.white,
                child: icon,
              ),
            ),
            const SizedBox(width: AppSizes.dimen8),
            Text(
              title,
              style: const TextStyle(
                  fontSize: AppSizes.bodyText1,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white),
            )
          ],
        ),
      ),
    );
  }
}
