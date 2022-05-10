import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/common/palette.dart';
import 'package:fanex_flutter/common/strings.dart';
import 'package:fanex_flutter/features/more/account/features/transaction_history/ui/transaction_history_screen.dart';
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
                                  fontSize: AppSizes.dimen12),
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
                          AppStrings.textWinnings,
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
                borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius),
                color: AppColors.textFieldBg,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(AppSizes.dimen8),
                        child: Text(
                          AppStrings.textWithdrawLimit,
                          style: TextStyle(
                              fontSize: AppSizes.dimen16,
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
                                  fontSize: AppSizes.dimen16,
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
                          AppStrings.textMaximumLimit,
                          style: TextStyle(
                              fontSize: AppSizes.dimen16,
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
                              AppStrings.maximumLimitCount,
                              style: TextStyle(
                                  fontSize: AppSizes.dimen16,
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
                borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius),
                color: AppColors.textFieldBg,
              ),
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.dimen8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      AppStrings.verificationAadhar,
                      style: TextStyle(
                          fontSize: AppSizes.headline6,
                          color: AppColors.youtube),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buttonTransactionHistory(){
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => TransactionHistoryScreen(),
        ));
      },
      child: Container(
        height: AppSizes.dimen55,
        margin: const EdgeInsets.all(AppSizes.dimen12),
        decoration: BoxDecoration(
          color: AppColors.textFieldBg,
          borderRadius: BorderRadius.circular(AppSizes.cardCornerRadius),
        ),
        padding: const EdgeInsets.all(AppSizes.dimen8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.transactionHistoryText,
              style: TextStyle(
                  color: AppColors.black,
                  fontSize: AppSizes.dimen16,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(AppSizes.dimen8),
              child: Icon(Icons.arrow_forward_ios,color: AppColors.green,),
            ),
          ],
        ),
      ),
    );

  }
  Widget _buttonVerifyYourAccount(){
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(AppSizes.dimen12),
        decoration: BoxDecoration(
          color: AppColors.lightGreen,
          borderRadius: BorderRadius.circular(6),
        ),
        height: AppSizes.dimen55,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(AppSizes.dimen8),
              child: Text(
                AppStrings.verifyAccountText,
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: AppSizes.dimen16,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: AppSizes.dimen9),
              child: Row(
                children: [
                  Text(
                    AppStrings.notCompletedText,
                    style: TextStyle(
                        fontSize: AppSizes.dimen16,
                        color: AppColors.white),
                  ),
                  Icon(Icons.arrow_forward_ios,color: AppColors.white,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
