class ResetPasswordResponseModel {
  dynamic ack;
  dynamic detail;


  ResetPasswordResponseModel({ this.ack , this.detail, });

  factory ResetPasswordResponseModel.fromJson(Map<dynamic, dynamic> json) {
    return ResetPasswordResponseModel(
      ack: json['ack'],
     detail: json.containsKey('msg') ? json['msg'] ?? "" : "",
    );
  }
}
