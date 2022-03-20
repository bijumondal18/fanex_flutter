import 'package:flutter/material.dart';

import '../../../../../../common/dimens.dart';
import '../../../../../../common/palette.dart';
import '../../../../../../common/theme.dart';

class FollowCardItem extends StatelessWidget {
  final String title;
  final Icon icon;
  final VoidCallback onpressed;

  const FollowCardItem(
      {Key? key,
      required this.title,
      required this.icon,
      required this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppSizes.dimen16),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: AppColors.orange,
          borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius)),
      child: InkWell(
        onTap: onpressed,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(AppSizes.dimen12),
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
              style: AppTheme.lightTheme.textTheme.headline5,
            )
          ],
        ),
      ),
    );
  }
}
