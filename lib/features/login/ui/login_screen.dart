import 'dart:collection';

import 'package:fanex_flutter/bottom_navigation_bar.dart';
import 'package:fanex_flutter/features/login/features/forget_password/ui/forget_password_screen.dart';
import 'package:fanex_flutter/features/login/features/signup/ui/signup_screen.dart';
import 'package:fanex_flutter/utils/app_helper.dart';
import 'package:fanex_flutter/utils/shared_preferences.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fanex_flutter/widgets/widgets.dart';
import 'package:fanex_flutter/common/common.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../common/route.dart';
import '../../../widgets/custom_circleindicator.dart';
import '../login_bloc/login_bloc.dart';

/// ----------Login Screen-------------------- ///

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController(text: '9874379052');
    TextEditingController passwordController = TextEditingController(text: 'Arpan80133@');
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: AppColors.white,
        elevation: AppSizes.elevation0,
      ),
      body:Stack(
        children: [
       SafeArea(
      child: SingleChildScrollView(
      child: Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
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
                    builder: (context) =>
                    const ForgetPasswordScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.dimen8),
                child: Text(
                  AppStrings.forgetPasswordButtonText,
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyText1,
                ),
              ),
            ),
          ),

          const SizedBox(height: AppSizes.dimen16),

          ///Login Button
          CustomFullButton(
              title: AppStrings.loginButtonText.toUpperCase(),
              onPressed: () {
                print(
                    buildParams(usernameController.text,
                        passwordController.text));
                BlocProvider.of<LoginBloc>(context).add(
                    FatchLoginData(
                        buildParams(usernameController.text,
                            passwordController.text)));
              }),
          const SizedBox(
            height: AppSizes.dimen16,
          ),

          ///SignUp Button
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                CustomPageRoute(widget: const SignUpScreen()),
              );
              if (kDebugMode) {
                print('go to sign up screen');
              }
            },
            child: Align(
              alignment: Alignment.center,
              child: Text(
                AppStrings.notAMemberButtonText,
                style: Theme
                    .of(context)
                    .textTheme
                    .bodyText1,
              ),
            ),
          ),

          const SizedBox(height: AppSizes.dimen24),
        ],
      ),
    ),
    ),
    ),
          Container(
            alignment: Alignment.center,
            child: BlocConsumer<LoginBloc, LoginState>(
              listener:(context, state){
                if (state is LoginLoadedState) {
                  if (state.loginResponseModel.ack.toString() != '0') {
                    final FanxPreferance pref=FanxPreferance();
                    pref.setIsLoggedIn(true);
                    pref.setUserId(state.loginResponseModel.user_id.toString());
                    print(state.loginResponseModel.msg
                        .toString());
                    Navigator.pushReplacement(
                      context,
                      CustomPageRoute(
                          widget: const CustomBottomNavigationBar()),
                    );
                  } else {
                    print(state.loginResponseModel.msg
                        .toString());
                    passwordController.text="";
                    AppHelper.showBasicFlash(context, state.loginResponseModel.msg.toString());
                  }
                } else if (state is LoginFailedState) {
                }
              } ,
              builder: (context, state) {
                if (state is LoginLoadingState) {
                  return CustomCircleIndicator();
                }
                return Container();

              },
            ),
          ),
        ],
      ),
    );
}}

Map<String, dynamic> buildParams(String userName,
    String password,) {
  Map<String, dynamic> params = new HashMap<String, dynamic>();
  params['email'] = userName.toString();
  params['password'] = password.toString();
  params['deviceId'] = 'fc1b5fbc236da463';
  params['deviceType'] = AppHelper.getOperatingSystem().toString();
  return params;
}
