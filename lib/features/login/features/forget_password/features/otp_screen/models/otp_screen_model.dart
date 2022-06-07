class OtpScreenResponseModel {
  dynamic ack;
  dynamic msg;

  OtpScreenResponseModel({ this.ack,  this.msg,});

  factory OtpScreenResponseModel.fromJson(Map<dynamic, dynamic> json) {
    return OtpScreenResponseModel(
      ack: json['ack'],
      msg: json.containsKey('msg') ? json['msg'] ?? "" : "",
    );
  }
}
