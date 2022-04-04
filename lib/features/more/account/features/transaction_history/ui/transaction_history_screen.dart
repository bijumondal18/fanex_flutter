import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/features/more/account/features/transaction_history/ui/widgets/cardItem.dart';
import 'package:fanex_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomDefaultAppBar(title: 'Transaction History'),
      body: ListView.builder(
          //shrinkWrap: true,
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            return const TransactionHistoryCardItem();
          }),
    );
  }

  Widget _buildFilterButton(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Filter',
              style: TextStyle(
                  color: AppColors.orange,
                  fontWeight: FontWeight.w600,
                  fontSize: AppSizes.button),
            ),
            Icon(
              FontAwesomeIcons.filterCircleDollar,
              size: 14,
            )
          ],
        ));
  }
}
