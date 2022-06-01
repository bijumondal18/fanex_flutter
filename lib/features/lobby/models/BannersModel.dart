class BannersModel{
  dynamic url;
  dynamic name;

  BannersModel({this.url, this.name});

  factory BannersModel.fromJson(Map<String,dynamic>json){
    return BannersModel(
      name: json.containsKey('name')?json['name']??"":"",
      url: json['URL']??""
    );
  }


//  var response = value['results'] as List;

 // List<BannersModel> bannersModel;

 // bannersModel = response.map((e) => BannersModel.fromJson(e)).toList();







}