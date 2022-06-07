import 'dart:convert';
import 'package:fanex_flutter/api/urls.dart';
import 'package:fanex_flutter/features/login/models/login_models.dart';
import 'package:fanex_flutter/utils/app_helper.dart';
import 'package:http/http.dart' as http;

class NotificationRepo {


  Future<String> getNotificationData( String token) async {
    final response =
    await http.Client().get(Uri.parse('${FanexURLs.sListofNotification}$token'));
    if (response.statusCode == 200) {
      AppHelper.showLog(response.toString());
      print(response.body);
      return response.body;
    } else {
      throw Exception('error');
    }
  }
}