class ForgetPasswordResponseModel {
   dynamic ack;
   dynamic msg;

  ForgetPasswordResponseModel({ this.ack,  this.msg,});

  factory ForgetPasswordResponseModel.fromJson(Map<dynamic, dynamic> json) {
    return ForgetPasswordResponseModel(
      ack: json['ack'],
      msg: json.containsKey('msg') ? json['msg'] ?? "" : "",
    );
  }
}
