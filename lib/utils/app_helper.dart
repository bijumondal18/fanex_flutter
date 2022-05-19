import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:fanex_flutter/common/common.dart';
import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';

class AppHelper
{
  static final _deviceInfo = DeviceInfoPlugin();

  static String getOperatingSystem() => Platform.operatingSystem;

  static Future<String> PhoneInfo()  async{
    var id;
    if (Platform.isAndroid) {
      final info = await _deviceInfo.androidInfo;
      id='${info.androidId}';
      return '${info.androidId}';
    } else if (Platform.isIOS) {
      final info =await  _deviceInfo.iosInfo;
      id='${info.model}';
      return '${info.model}';
    } else {
      "Error";
    }
    return id;
  }
  static showBasicFlash(BuildContext context, String msg
  ) {
    showFlash(
      context: context,
      duration: Duration(seconds: 1),
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
}