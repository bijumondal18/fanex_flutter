import 'dart:collection';

import 'package:fanex_flutter/features/lobby/ui/lobby_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../common/dimens.dart';
import '../../../../../../../common/palette.dart';
import '../../../../../../../common/route.dart';
import '../../../../../../../common/strings.dart';
import '../../../../../../../utils/app_helper.dart';
import '../../../../../../../utils/shared_preferences.dart';
import '../../../../../../../widgets/custom_circleindicator.dart';
import '../../../../../../../widgets/custom_full_button.dart';
import '../../../../../../../widgets/custom_text_field.dart';
import '../bloc/reset_password_bloc.dart';
import '../repository/reset_password_repository.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {

  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ResetPasswordBloc(
        resetPasswordRepository:ResetPasswordRepository()),
          child: BlocListener<ResetPasswordBloc, ResetPasswordState>(
            listener: (context, state) {
            if (state is ResetPasswordSuccess) {
            if (state.resetPasswordResponseModel.detail.toString() != '0') {
               Navigator.pushReplacement(context,
            CustomPageRoute(widget: const LobbyScreen()));
            } else {
              print(state.resetPasswordResponseModel.detail.toString());
              AppHelper.showBasicFlash(
              context, state.resetPasswordResponseModel.detail.toString());
            }
            } else if (state is ResetPasswordFailed) {
            AppHelper.showBasicFlash(context, 'Something went wrong');
            }
            },
           ///   Stack(
             ///children: [
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

                      Padding(
                        padding: const EdgeInsets.only(bottom: AppSizes.dimen24),
                        child: Text('RESET PASSWORD', style: TextStyle(
                            color: AppColors.orange, fontSize: AppSizes.headline4),),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(AppSizes.dimen8),
                        child: CustomTextField(
                          hintText: AppStrings.newPasswordText,
                          obscureText: false,
                          controller: newPasswordController,
                          icon: const Icon(Icons.lock),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(AppSizes.dimen8),
                        child: CustomTextField(
                          hintText: AppStrings.confirmPasswordText,
                          obscureText: false,
                          controller: confirmPasswordController,
                          icon: const Icon(Icons.lock),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(AppSizes.dimen8),
                        child: CustomFullButton(
                            title: AppStrings.savePasswordButtonText.toUpperCase(),
                            onPressed: () {}),
                      ),
                    ],
                  ),
                ))));
               // Container(
               //   alignment: Alignment.center,
               //   child: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
               //     listener: (context, state) {
               //       if (state is ResetPasswordSuccess) {
               //         if (state.resetPasswordResponseModel.detail.toString() != '0') {
               //           Navigator.pushReplacement(
               //             context,
               //             CustomPageRoute(
               //                 widget: const LobbyScreen()),
               //           );
               //         } else {
               //           AppHelper.showBasicFlash(
               //               context, state.resetPasswordResponseModel.detail.toString());
               //         }
               //       } else if (state is ResetPasswordFailed) {
               //         AppHelper.showBasicFlash(context, 'Something went wrong');
               //       }
               //     },
               //     builder: (context, state) {
               //       if (state is ResetPasswordLoading) {
               //         return CustomCircleIndicator();
               //       }
               //       return Container();
               //     },
               //   ),
               // ),
        //      ],
        //    ),
        // );
    }
  }

// Map<String, dynamic> buildParams(
//     String detail,
//     ) {
//   Map<String, dynamic> params = new HashMap<String, dynamic>();
//   params['detail'] = detail.toString();
//   return params;
// }
