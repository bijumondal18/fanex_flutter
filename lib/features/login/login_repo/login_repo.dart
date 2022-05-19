import 'dart:convert';
import 'package:fanex_flutter/api/urls.dart';
import 'package:fanex_flutter/features/login/models/login_models.dart';
import 'package:http/http.dart' as http;

class LogInRepo {
  Map<String, dynamic> params = Map();

  Future<LoginResponseModel> doLogin(pragma) async {
    params = pragma;

    print("----$params");

    final response =
        await http.Client().post(Uri.parse(FanexURLs.userLogin), body: params);
    if (response.statusCode == 200) {
      print(response.body);
      //LoginResponseModel loginResponseModel;
      //loginResponseModel =
      //json.decode(response.body).map((e) => LoginResponseModel.fromJson(e));
      print(LoginResponseModel.fromJson(json.decode(response.body)).msg.toString() +
          LoginResponseModel.fromJson(json.decode(response.body)).ack.toString() +
          LoginResponseModel.fromJson(json.decode(response.body)).user_id.toString() +
          LoginResponseModel.fromJson(json.decode(response.body)).account_id.toString());
      return LoginResponseModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('error');
    }
  }
}
