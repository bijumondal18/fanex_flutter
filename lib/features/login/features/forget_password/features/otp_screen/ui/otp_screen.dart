import 'package:fanex_flutter/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../../../../common/dimens.dart';
import '../../../../../../../common/strings.dart';
import '../../../../../../../widgets/custom_full_button.dart';
import '../../../../../../../widgets/custom_text_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  String? _otp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Fanex Logo
            SizedBox(
              width: 250,
              height: 160,
              child: Image.asset('assets/images/fanex-logo.png',
                  fit: BoxFit.contain),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: AppSizes.dimen24),
              child: Text('VERIFICATION', style: TextStyle(color: AppColors.orange, fontSize: AppSizes.headline4),),
            ),

            ///Registered Mobile Number TextField
            Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OtpInput(_fieldOne, true),
                          OtpInput(_fieldTwo, false),
                          OtpInput(_fieldThree, false),
                          OtpInput(_fieldFour, false),
                        ],
                      ),
            const SizedBox(height: AppSizes.dimen30),

            ///Reset Password Button
            Padding(
              padding: const EdgeInsets.all(AppSizes.dimen8),
              child: CustomFullButton(
                  title: AppStrings.verifyHint.toUpperCase(),
                  onPressed: () {}
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSizes.dimen8),
              child: CustomFullButton(
                  title: AppStrings.resendHint.toUpperCase(),
                  onPressed: () {}
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            counterText: '',
            hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}