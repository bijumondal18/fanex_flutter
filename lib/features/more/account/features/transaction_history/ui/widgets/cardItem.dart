import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/widgets/custom_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TransactionHistoryCardItem extends StatelessWidget {
  const TransactionHistoryCardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Row(
        children: [
          Text('23-04-2022', style: Theme.of(context).textTheme.bodyText1),
          Expanded(
              child: Center(
                  child: Text('Winnings',
                      style: Theme.of(context).textTheme.bodyText1))),
          Text('+c 400',
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: AppColors.orange)),
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
