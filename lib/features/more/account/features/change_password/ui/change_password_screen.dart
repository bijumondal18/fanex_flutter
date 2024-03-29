import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/widgets/custom_default_appbar.dart';
import 'package:fanex_flutter/widgets/custom_full_button.dart';
import 'package:fanex_flutter/widgets/custom_text_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController currentPasswordController = TextEditingController();
    TextEditingController newPasswordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();

    return Scaffold(
      ///appbar
      appBar: const CustomAppbar(title: 'Change Password'),

      /// main content
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            margin: const EdgeInsets.all(AppSizes.kDefaultPadding),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ///header icon
                  headerIcon(context),
                  const SizedBox(
                    height: AppSizes.dimen30,
                  ),

                  ///current password field
                  CustomTextField(
                      hintText: 'Current Password',
                      obscureText: true,
                      controller: currentPasswordController,
                      icon: const Icon(Icons.vpn_key_rounded)),
                  const SizedBox(
                    height: AppSizes.dimen12,
                  ),

                  ///new password field
                  CustomTextField(
                      hintText: 'New Password',
                      obscureText: true,
                      controller: newPasswordController,
                      icon: const Icon(Icons.vpn_key_rounded)),
                  const SizedBox(
                    height: AppSizes.dimen12,
                  ),

                  ///confirm password field
                  CustomTextField(
                      hintText: 'Confirm Password',
                      obscureText: true,
                      controller: confirmPasswordController,
                      icon: const Icon(Icons.vpn_key_rounded)),
                  const SizedBox(
                    height: AppSizes.dimen30,
                  ),

                  ///change password button
                  CustomFullButton(
                      title: 'Change Password'.toUpperCase(),
                      onPressed: () {
                        ///Todo change password api call here...
                        if (kDebugMode) {
                          print('change password button pressed');
                        }
                      })
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget headerIcon(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: SvgPicture.asset('assets/icons/ic-lock.svg'),
    );
  }
}
