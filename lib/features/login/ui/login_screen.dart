import 'package:fanex_flutter/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:fanex_flutter/widgets/widgets.dart';
import 'package:fanex_flutter/common/common.dart';

/// ----------login screen-------------------- ///
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
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
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    AppStrings.forgetPasswordButtonText,
                    style: AppTheme.lightTheme.textTheme.bodyText2,
                  ),
                ),
                const SizedBox(height: AppSizes.dimen30),
                CustomFullButton(
                    title: AppStrings.loginButtonText, onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CustomBottomNavigationBar()));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
