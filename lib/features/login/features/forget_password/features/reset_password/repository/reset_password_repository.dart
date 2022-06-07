import 'dart:convert';

import '../../../../../../../api/urls.dart';
import '../../../../../../../utils/app_helper.dart';
import '../models/reset_password_models.dart';
import 'package:http/http.dart' as http;

class ResetPasswordRepository {
  Future<ResetPasswordResponseModel> doResetPassword(Map<String, dynamic> params) async {
    final response =
    await http.Client().post(Uri.parse(FanexURLs.userResetPassword), body: params);
    if (response.statusCode == 200) {
      AppHelper.showLog(response.toString());
      print(response.body);
      return ResetPasswordResponseModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('error');
    }
  }
}