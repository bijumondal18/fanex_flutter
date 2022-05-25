import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/features/login/login_repo/login_repo.dart';
import 'package:fanex_flutter/features/screens.dart';
import 'package:flutter/material.dart';
import 'package:fanex_flutter/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../common/route.dart';
import '../../login/login_bloc/login_bloc.dart';

/// ----------Welcome Screen-------------------- ///

class WelcomeScreen extends StatelessWidget {
   WelcomeScreen({Key? key}) : super(key: key);

  @override
  Map<String ,dynamic>params=Map();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: AppSizes.elevation0,
      ),
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
                    Navigator.pushReplacement(
                      context,
                      CustomPageRoute(
                          widget: BlocProvider<LoginBloc>(
                        create: (context) => LoginBloc(LogInRepo()),
                        child: LoginScreen(),
                      )),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
