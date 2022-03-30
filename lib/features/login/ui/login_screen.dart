import 'package:fanex_flutter/bottom_navigation_bar.dart';
import 'package:fanex_flutter/features/login/features/forget_password/ui/forget_password_screen.dart';
import 'package:fanex_flutter/features/login/features/signup/ui/signup_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fanex_flutter/widgets/widgets.dart';
import 'package:fanex_flutter/common/common.dart';

import '../../../common/route.dart';

/// ----------Login Screen-------------------- ///

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: AppSizes.elevation0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(
                horizontal: AppSizes.dimen16, vertical: AppSizes.dimen16),
            child: Column(
              children: [
                ///Fanex Logo
                SizedBox(
                  width: 250,
                  height: 160,
                  child: Image.asset('assets/images/fanex-logo.png',
                      fit: BoxFit.contain),
                ),

                ///Username TextField
                CustomTextField(
                  hintText: AppStrings.usernameHint,
                  obscureText: false,
                  controller: usernameController,
                  icon: const Icon(Icons.person),
                ),
                const SizedBox(height: AppSizes.dimen8),

                ///Password TextField
                CustomTextField(
                    hintText: AppStrings.passwordHint,
                    obscureText: true,
                    controller: passwordController,
                    icon: const Icon(Icons.lock)),
                const SizedBox(height: AppSizes.dimen16),

                ///Forget Password Button
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ForgetPasswordScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(AppSizes.dimen8),
                      child: Text(
                        AppStrings.forgetPasswordButtonText,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: AppSizes.dimen16),

                ///Login Button
                CustomFullButton(
                    title: AppStrings.loginButtonText.toUpperCase(),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        CustomPageRoute(
                            widget: const CustomBottomNavigationBar()),
                      );
                    }),
                const SizedBox(
                  height: AppSizes.dimen16,
                ),

                ///SignUp Button
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      CustomPageRoute(
                          widget: const SignUpScreen()),
                    );
                    if (kDebugMode) {
                      print('go to sign up screen');
                    }
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      AppStrings.notAMemberButtonText,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),

                const SizedBox(height: AppSizes.dimen24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
