import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/widgets/custom_addcash_withdraw_button.dart';
import 'package:flutter/material.dart';

import '../../../../../../widgets/custom_default_appbar.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomDefaultAppBar(
        title: 'My Wallet',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(AppSizes.dimen12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius),
                color: AppColors.amber,
              ),
              //height: 240,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(AppSizes.dimen8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(AppStrings.textWalletBalance,
                          style: TextStyle(
                              fontSize: AppSizes.headline5,
                              fontWeight: FontWeight.w600,
                              color: AppColors.white),
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.currency_rupee_rounded,
                              color: Colors.white,
                              size: AppSizes.headline5,
                            ),
                            Text(AppStrings.textBalanceCount,
                              style: TextStyle(
                                  fontSize: AppSizes.headline5,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.dimen8),
                    child: Divider(
                      color: AppColors.black.withOpacity(0.3),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(AppSizes.dimen8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(AppStrings.textDeposit,
                              style: TextStyle(
                                  fontSize: AppSizes.headline5,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.white),
                            ),
                            Text(
                              AppStrings.requestingWithdrawalText,
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: AppSizes.dimen16),
                            ),
                          ],
                        ),
                        CustomAddCashWithdrawButton(hintText: "ADD CASH")
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.dimen8),
                    child: Divider(
                      color: AppColors.black.withOpacity(0.3),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(AppSizes.dimen8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Winnings",
                          style: TextStyle(
                              fontSize: AppSizes.headline5,
                              fontWeight: FontWeight.bold,
                              color: AppColors.white),
                        ),
                        CustomAddCashWithdrawButton(hintText: "WITHDRAW",)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          _buttonTransactionHistory(),

            _buttonVerifyYourAccount(),

            Container(
              margin: const EdgeInsets.all(AppSizes.dimen12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.lightGrey,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(AppSizes.dimen8),
                        child: Text(
                          'Your minimum withdraw limit is',
                          style: TextStyle(
                              fontSize: AppSizes.headline5,
                              color: AppColors.black),
                        ),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.currency_rupee_rounded,
                            color: Colors.black,
                            size: AppSizes.headline5,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                              AppStrings.minimumWithdrawCount,
                              style: TextStyle(
                                  fontSize: AppSizes.headline5,
                                  //fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppSizes.dimen8),
                    child: Divider(
                      color: AppColors.black.withOpacity(0.3),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(AppSizes.dimen8),
                        child: Text(
                          "Your maximum withdraw limit is",
                          style: TextStyle(
                              fontSize: AppSizes.headline5,
                              //fontWeight: FontWeight.bold,
                              color: AppColors.black),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.currency_rupee_rounded,
                            color: AppColors.black,
                            size: AppSizes.headline5,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                              '5,000',
                              style: TextStyle(
                                  fontSize: AppSizes.headline5,
                                  //fontWeight: FontWeight.bold,
                                  color: AppColors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(AppSizes.dimen12),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.lightGrey,
              ),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "You must upload your Aadhar card to complete\nverification.",
                      style: TextStyle(
                          fontSize: AppSizes.headline6,
                          color: AppColors.youtube),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buttonTransactionHistory(){
    return Container(
      margin: const EdgeInsets.all(AppSizes.dimen12),
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(6),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Transaction History',
            style: TextStyle(
                color: AppColors.white,
                fontSize: AppSizes.headline5,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );

  }
  Widget _buttonVerifyYourAccount(){
    return Container(
      margin: const EdgeInsets.all(AppSizes.dimen12),
      decoration: BoxDecoration(
        color: AppColors.green,
        borderRadius: BorderRadius.circular(6),
      ),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Verify your account',
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: AppSizes.headline5,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 9),
            child: Row(
              children: [
                Text(
                  "Not Completed",
                  style: TextStyle(
                      fontSize: AppSizes.dimen16,
                      color: AppColors.white),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
