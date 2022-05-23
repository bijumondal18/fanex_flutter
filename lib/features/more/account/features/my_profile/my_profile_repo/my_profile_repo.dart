import 'package:fanex_flutter/api/urls.dart';
import 'package:fanex_flutter/features/more/account/features/my_profile/my_profile_models/my_profile_models.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyProfileRepo{

  Future <ProfileResponseModel> getProfileData(String Id) async{
    final response =
    await http.Client().get(Uri.parse('${FanexURLs.userDetails}$Id'));
    print('${FanexURLs.userDetails}$Id');
    if (response.statusCode == 200) {
      print(response.body);
      print( ProfileResponseModel.fromJson(json.decode(response.body)).imageURL);
      return  ProfileResponseModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('error');
    }
}
}