

import 'dart:convert';

import '../../../../../../../api/urls.dart';
import '../../../../../../../utils/app_helper.dart';
import '../models/otp_screen_model.dart';
import 'package:http/http.dart' as http;
class OtpScreenRepository {
  Future<OtpScreenResponseModel> doVerify(Map<String, dynamic> params) async {
    final response =
    await http.Client().post(Uri.parse(FanexURLs.userVerifyOTP), body: params);
    if (response.statusCode == 200) {
      AppHelper.showLog(response.toString());
      print(response.body);
      return OtpScreenResponseModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('error');
    }
  }
}