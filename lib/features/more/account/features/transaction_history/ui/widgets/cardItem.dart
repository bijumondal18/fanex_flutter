import 'package:fanex_flutter/common/common.dart';
import 'package:flutter/material.dart';

class TransactionHistoryCardItem extends StatelessWidget {
  const TransactionHistoryCardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(AppSizes.dimen8),
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
        children: const [
          Text('23-04-2022'),
          Expanded(child: Center(child: Text('Winnings'))),
          Text('+c 400'),
          Icon(Icons.more_vert)
        ],
      ),
    );
  }
}
