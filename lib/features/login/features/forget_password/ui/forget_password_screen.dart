import 'dart:collection';

import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/features/login/features/forget_password/features/otp_screen/ui/otp_screen.dart';
import 'package:fanex_flutter/features/login/features/forget_password/repository/forget_password_repository.dart';
import 'package:fanex_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../bottom_navigation_bar.dart';
import '../../../../../common/dimens.dart';
import '../../../../../common/route.dart';
import '../../../../../utils/app_helper.dart';
import '../../../../../utils/shared_preferences.dart';
import '../../../../../widgets/custom_circleindicator.dart';
import '../bloc/forget_password_bloc.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forget Password'),
      ),
      // body: BlocProvider(
      // create: (context) => ForgetPasswordBloc(
      //     forgetPasswordRepository:
      //         RepositoryProvider.of<ForgetPasswordRepository>(context)),
      // child: BlocListener<ForgetPasswordBloc, ForgetPasswordState>(
      //   listener: (context, state) {
      // if (state is ForgetPasswordSuccess) {
      //   if (state.forgetPasswordResponseModel.ack.toString() != '0') {
      //     Navigator.pushReplacement(
      //       context,
      //       CustomPageRoute(widget: const CustomBottomNavigationBar()),
      //     );
      //   } else {
      //     print(state.forgetPasswordResponseModel.msg.toString());
      //     phoneController.text = "";
      //     AppHelper.showBasicFlash(
      //         context, state.forgetPasswordResponseModel.msg.toString());
      //   }
      // } else if (state is ForgetPasswordFailed) {
      //   AppHelper.showBasicFlash(context, 'Something went wrong');
      // }
      // },
      body: SingleChildScrollView(
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
            Padding(
              padding: const EdgeInsets.all(AppSizes.dimen8),
              child: CustomTextField(
                hintText: AppStrings.registeredMobileNumberHint,
                obscureText: false,
                controller: phoneController,
                icon: const Icon(Icons.phone),
              ),
            ),
            const SizedBox(height: AppSizes.dimen30),

            ///Reset Password Button
            Padding(
              padding: const EdgeInsets.all(AppSizes.dimen8),
              child: CustomFullButton(
                  title: AppStrings.resetPasswordButtonText.toUpperCase(),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => const OtpScreen()));
                    // BlocProvider.of<ForgetPasswordBloc>(context)
                    //   ..add(FetchForgetPasswordData(
                    //       buildParams(phoneController.text)));
                  }),
            ),
          ],
        ),
      ),
    );
    //   ),
    // );
  }
}

// Map<String, dynamic> buildParams(
//   String email,
// ) {
//   Map<String, dynamic> params = new HashMap<String, dynamic>();
//   params['email'] = email.toString();
//   return params;
// }
