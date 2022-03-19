import 'package:fanex_flutter/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:fanex_flutter/widgets/widgets.dart';
import 'package:fanex_flutter/common/common.dart';

/// ----------login screen-------------------- ///
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
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
                CustomTextField(
                  hintText: AppStrings.usernameHint,
                  obscureText: false,
                  controller: usernameController,
                  icon: const Icon(Icons.person),
                ),
                const SizedBox(height: AppSizes.dimen8),
                CustomTextField(
                    hintText: AppStrings.passwordHint,
                    obscureText: true,
                    controller: passwordController,
                    icon: const Icon(Icons.lock)),
                const SizedBox(height: AppSizes.dimen30),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    AppStrings.forgetPasswordButtonText,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                const SizedBox(height: AppSizes.dimen30),
                CustomFullButton(
                    title: AppStrings.loginButtonText.toUpperCase(),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) =>
                              const CustomBottomNavigationBar()));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
