import 'package:flutter/material.dart';

import '../../../../../../../common/dimens.dart';
import '../../../../../../../common/palette.dart';
import '../../../../../../../common/strings.dart';
import '../../../../../../../widgets/custom_full_button.dart';
import '../../../../../../../widgets/custom_text_field.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {

  final pass1Controller = TextEditingController();
  final pass2Controller = TextEditingController();

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
              child: Text('RESET PASSWORD', style: TextStyle(color: AppColors.orange, fontSize: AppSizes.headline4),),
            ),

            Padding(
              padding: const EdgeInsets.all(AppSizes.dimen8),
              child: CustomTextField(
                hintText: AppStrings.newPasswordText,
                obscureText: false,
                controller: pass1Controller,
                icon: const Icon(Icons.lock),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(AppSizes.dimen8),
              child: CustomTextField(
                hintText: AppStrings.confirmPasswordText,
                obscureText: false,
                controller: pass2Controller,
                icon: const Icon(Icons.lock),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSizes.dimen8),
              child: CustomFullButton(
                  title: AppStrings.savePasswordButtonText.toUpperCase(),
                  onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
