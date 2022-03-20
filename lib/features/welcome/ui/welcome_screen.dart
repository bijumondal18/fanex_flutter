import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/features/screens.dart';
import 'package:flutter/material.dart';
import 'package:fanex_flutter/widgets/widgets.dart';

/// ----------welcome screen-------------------- ///

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.symmetric(
              vertical: AppSizes.dimen16, horizontal: AppSizes.dimen16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///Fanex Logo
              SizedBox(
                width: 250,
                height: 160,
                child: Image.asset('assets/images/fanex-logo.png',
                    fit: BoxFit.contain),
              ),
              ///Get Started Button
              CustomFullButton(
                  title: AppStrings.getStartedButtonText.toUpperCase(),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
