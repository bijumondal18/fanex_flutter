
import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/features/login/features/forget_password/features/reset_password/ui/reset_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../../../common/dimens.dart';
import '../../../../../../../common/strings.dart';
import '../../../../../../../widgets/custom_full_button.dart';
import '../../../../../../../widgets/custom_text_field.dart';

import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  OtpFieldController otpController = OtpFieldController();

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
            Padding(
              padding: const EdgeInsets.all(AppSizes.dimen8),
              child: OTPTextField(
                obscureText: true,
                length: 4,
                controller: otpController,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 80,
                keyboardType: TextInputType.number,
                style: TextStyle(
                    fontSize: AppSizes.headline3
                ),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.underline,
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ),
            ),

            const SizedBox(height: AppSizes.dimen30),

            ///Reset Password Button
            Padding(
              padding: const EdgeInsets.all(AppSizes.dimen8),
              child: CustomFullButton(
                  title: AppStrings.verifyHint.toUpperCase(),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => const ResetPasswordScreen()));
                  }
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
