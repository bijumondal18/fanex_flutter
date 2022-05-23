import 'dart:convert';
import 'package:fanex_flutter/api/urls.dart';
import 'package:fanex_flutter/features/login/models/login_models.dart';
import 'package:http/http.dart' as http;

class LogInRepo {
  Map<String, dynamic> params = Map();

  Future<LoginResponseModel> doLogin(pragma) async {
    params = pragma;
    final response =
        await http.Client().post(Uri.parse(FanexURLs.userLogin), body: params);
    if (response.statusCode == 200) {
      print(response.body);
      return LoginResponseModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('error');
    }
  }
}
