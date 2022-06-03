import 'dart:convert';

import '../../../../../api/urls.dart';
import '../../../../../utils/app_helper.dart';
import '../models/forget_password_models.dart';
import 'package:http/http.dart' as http;

class ForgetPasswordRepository {
  Future<ForgetPasswordResponseModel> doForgetPassword(Map<String, dynamic> params) async {
    final response =
    await http.Client().post(Uri.parse(FanexURLs.userForgotPassword), body: params);
    if (response.statusCode == 200) {
      AppHelper.showLog(response.toString());
      print(response.body);
      return ForgetPasswordResponseModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('error');
    }
  }
}