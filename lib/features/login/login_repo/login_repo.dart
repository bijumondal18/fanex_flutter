import 'dart:convert';
import 'package:fanex_flutter/api/urls.dart';
import 'package:fanex_flutter/features/login/models/login_models.dart';
import 'package:fanex_flutter/utils/app_helper.dart';
import 'package:http/http.dart' as http;

class LogInRepo {

  Future<LoginResponseModel> doLogin(Map<String, dynamic> params) async {
    final response =
        await http.Client().post(Uri.parse(FanexURLs.userLogin), body: params);
    if (response.statusCode == 200) {
      AppHelper.showLog(response.toString());
      print(response.body);
      return LoginResponseModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('error');
    }
  }
}
