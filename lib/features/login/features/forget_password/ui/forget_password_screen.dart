import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../../../../common/app_sizes.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController numberController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forget Password'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(
            horizontal: AppSizes.kDefaultPadding, vertical: AppSizes.kDefaultPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ///Fanex Logo
              SizedBox(
                width: 250,
                height: 160,
                child: Image.asset('assets/images/fanex-logo.png',
                    fit: BoxFit.contain),
              ),

              ///Registered Mobile Number TextField
              CustomTextField(
                hintText: AppStrings.registeredMobileNumberHint,
                obscureText: false,
                controller: numberController,
                icon: const Icon(Icons.person),
              ),
              const SizedBox(height: AppSizes.dimen30),

              ///Reset Password Button
              CustomFullButton(
                  title: AppStrings.resetPasswordButtonText.toUpperCase(),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
