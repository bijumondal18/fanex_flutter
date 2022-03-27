import 'package:fanex_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomDefaultAppBar(title: 'Transaction History'),
    );
  }
}
