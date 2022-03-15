import 'package:flutter/material.dart';
import 'package:fanex_flutter/widgets/widgets.dart';
import 'package:fanex_flutter/common/common.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: const EdgeInsets.symmetric(
                horizontal: AppSizes.dimen16, vertical: AppSizes.dimen16),
            child: Column(
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/images/fanex-logo.png',
                      fit: BoxFit.contain),
                ),
                const CustomTextField(hintText: AppStrings.usernameHint),
                const SizedBox(height: AppSizes.dimen8),
                const CustomTextField(hintText: AppStrings.passwordHint),
                const SizedBox(height: AppSizes.dimen16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: CheckboxListTile(
                        title: Text(
                          AppStrings.rememberPasswordText,
                          style: AppTheme.lightTheme.textTheme.bodyText2,
                        ),
                        value: false,
                        onChanged: (newValue) {},
                        controlAffinity: ListTileControlAffinity
                            .leading, //  <-- leading Checkbox
                      ),
                    ),
                    Flexible(
                        child: Text(
                      AppStrings.forgetPasswordButtonText,
                      style: AppTheme.lightTheme.textTheme.bodyText2,
                    ))
                  ],
                ),
                const SizedBox(height: AppSizes.dimen30),
                CustomFullButton(
                    title: AppStrings.loginButtonText, onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
