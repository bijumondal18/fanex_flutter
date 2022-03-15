import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/features/screens.dart';
import 'package:flutter/material.dart';
import 'package:fanex_flutter/widgets/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.symmetric(vertical: AppSizes.dimen16, horizontal: AppSizes.dimen16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/fanex-logo.png',
                  height: 100, fit: BoxFit.cover),
              CustomFullButton(
                  title: AppStrings.loginButtonText.toUpperCase(), onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginScreen()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
