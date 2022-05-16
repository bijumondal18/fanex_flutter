import 'dart:convert';

import 'package:fanex_flutter/api/urls.dart';
import 'package:fanex_flutter/features/lobby/models/BannersModel.dart';
import 'package:http/http.dart' as http;

class BannerRepo {
  Future<List<BannersModel>> getBanner() async {
    final response =
        await http.Client().get(Uri.parse(FanexURLs.sBannerImageList));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var result = data['results'] as List;
      List<BannersModel> bannersModel =
          result.map((e) => BannersModel.fromJson(e)).toList();
      return bannersModel;
    } else {
      throw Exception('error');
    }
  }
}
