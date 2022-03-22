import 'package:fanex_flutter/common/common.dart';
import 'package:flutter/material.dart';

class CustomHeader extends StatefulWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  State<CustomHeader> createState() => _CustomHeaderState();
}

class _CustomHeaderState extends State<CustomHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: AppSizes.appBarHeight,
      color: AppColors.header,
      child: Container(
        margin: const EdgeInsets.only(
            left: AppSizes.dimen16, right: AppSizes.dimen16),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundColor: AppColors.orange,
            ),
            const SizedBox(width: AppSizes.dimen8),
            Text(
              'Kart07'.toUpperCase(),
              style: AppTheme.lightTheme.textTheme.headline5,
            )
          ],
        ),
      ),
    );
  }
}
