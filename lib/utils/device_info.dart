import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class DeviceInfo {
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
}