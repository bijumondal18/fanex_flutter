import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:fanex_flutter/common/common.dart';
import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';

class AppHelper {
  static void showLog(String msg) {
    print(msg);
  }

  static final _deviceInfo = DeviceInfoPlugin();

  static String getOperatingSystem() => Platform.operatingSystem;

  static Future<String> PhoneInfo() async {
    var id;
    if (Platform.isAndroid) {
      final info = await _deviceInfo.androidInfo;
      id = '${info.androidId}';
      return '${info.androidId}';
    } else if (Platform.isIOS) {
      final info = await _deviceInfo.iosInfo;
      id = '${info.model}';
      return '${info.model}';
    } else {
      "Error";
    }
    return id;
  }

  static phoneType() {
    if (Platform.isAndroid) {
      return true;
    } else if (Platform.isIOS) {
      return false;
    }
  }

  static showBasicFlash(BuildContext context, String msg) {
    showFlash(
      context: context,
      duration: Duration(seconds: 3),
      builder: (context, controller) {
        return Flash(
          backgroundColor: AppColors.orange,
          controller: controller,
          behavior: FlashBehavior.floating,
          position: FlashPosition.bottom,
          horizontalDismissDirection: HorizontalDismissDirection.horizontal,
          child: FlashBar(
            content: Text(msg),
          ),
        );
      },
    );
  }

  static validateMobile(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length != 10)
      return 'Mobile Number must be of 10 digit';
    else
      return null;
  }

  static validateEmail(String value) {
    RegExp regex = new RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  static validatePassword(String value) {
    if (value.length != 6) {
      print('Enter Valid Password');
      return 'Enter Valid Password';
    } else
      return null;
  }
}

class AllStaticVariables {
  static String userId = '';
}
