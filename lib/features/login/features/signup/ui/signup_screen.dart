import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../../bottom_navigation_bar.dart';
import '../../../../../common/common.dart';
import '../../../../../common/route.dart';
import '../../../../../widgets/widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _referralCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///Appbar
      appBar: AppBar(
        title: const Text(
          'Sign up',
          style:
              TextStyle(color: AppColors.white, fontSize: AppSizes.headline5),
        ),
        backgroundColor: AppColors.header,
      ),

      ///main content
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(
              horizontal: AppSizes.kDefaultPadding, vertical: AppSizes.kDefaultPadding),
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
                hintText: AppStrings.usernameRegisterHint,
                obscureText: false,
                controller: _usernameController,
                icon: const Icon(Icons.person),
              ),
              const SizedBox(height: AppSizes.dimen8),

              ///first name TextField
              CustomTextField(
                hintText: AppStrings.firstNameHint,
                obscureText: false,
                controller: _firstNameController,
                icon: const Icon(Icons.person),
              ),
              const SizedBox(height: AppSizes.dimen8),

              ///last name TextField
              CustomTextField(
                hintText: AppStrings.lastNameHint,
                obscureText: false,
                controller: _lastNameController,
                icon: const Icon(Icons.person),
              ),
              const SizedBox(height: AppSizes.dimen8),

              ///mobile number TextField
              CustomTextField(
                hintText: AppStrings.mobileNumberHint,
                obscureText: false,
                controller: _mobileNumberController,
                icon: const Icon(Icons.person),
              ),
              const SizedBox(height: AppSizes.dimen8),

              ///Password TextField
              CustomTextField(
                  hintText: AppStrings.createPasswordHint,
                  obscureText: true,
                  controller: _passwordController,
                  icon: const Icon(Icons.lock)),
              const SizedBox(height: AppSizes.dimen8),

              ///mobile number TextField
              CustomTextField(
                hintText: AppStrings.referralCodeHint,
                obscureText: false,
                controller: _referralCodeController,
                icon: const Icon(Icons.person),
              ),
              const SizedBox(height: AppSizes.kDefaultPadding),

              ///Sign up Button
              CustomFullButton(
                  title: AppStrings.signupButtonText.toUpperCase(),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      CustomPageRoute(
                          widget: const CustomBottomNavigationBar()),
                    );
                  }),

              const SizedBox(height: AppSizes.kDefaultPadding),

              ///login Button
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  if (kDebugMode) {
                    print('go back to login screen');
                  }
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    AppStrings.alreadyAMemberButtonText,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),

              const SizedBox(height: AppSizes.dimen24),
            ],
          ),
        ),
      ),
    );
  }
}
