import 'package:fanex_flutter/common/common.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TransactionHistoryCardItem extends StatelessWidget {
  const TransactionHistoryCardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(
          left: AppSizes.dimen8,
          top: AppSizes.dimen12,
          bottom: AppSizes.dimen12,
          right: 0),
      margin: const EdgeInsets.symmetric(
          horizontal: AppSizes.dimen12, vertical: AppSizes.dimen8),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius),
          boxShadow: const [
            BoxShadow(
              offset: Offset(2, 2),
              blurRadius: 12,
              color: Color.fromRGBO(0, 0, 0, 0.16),
            )
          ]),
      child: Row(
        children: [
          const Text('23-04-2022',
              style: TextStyle(
                  fontSize: AppSizes.bodyText2,
                  fontWeight: FontWeight.w400,
                  color: AppColors.darkGrey)),
          const Expanded(
              child: Center(
                  child: Text('Winnings',
                      style: TextStyle(
                          fontSize: AppSizes.bodyText2,
                          fontWeight: FontWeight.w600,
                          color: AppColors.darkGrey)))),
          const Text('+c 400',
              style: TextStyle(
                  fontSize: AppSizes.bodyText2,
                  fontWeight: FontWeight.w400,
                  color: AppColors.orange)),
          InkWell(
            onTap: () {
              if (kDebugMode) {
                print('info button pressed');
              }
            },
            child: const Icon(
              Icons.more_vert,
              color: AppColors.green,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
