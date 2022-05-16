import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class DeviceInfo {
  static final _deviceInfo = DeviceInfoPlugin();

  static String getOperatingSystem() => Platform.operatingSystem;

  static Future PhoneInfo() async {
    if (Platform.isAndroid) {
      final info = await _deviceInfo.androidInfo;
      return '${info.androidId}';
    } else if (Platform.isIOS) {
      final info = await _deviceInfo.iosInfo;
      return '${info.model}';
    } else {
      "Error";
    }
  }
}

class InternetConnection extends StatelessWidget {
  InternetConnection({Key? key}) : super(key: key);

  Future<bool> hasConnection = InternetConnectionChecker().hasConnection;
  final text = 'No Internet';

  Widget build(BuildContext context) {
    if (hasConnection == true) {
      return Text('Internet');
    } else {
      return Text('No internet');
    }
  }
}
