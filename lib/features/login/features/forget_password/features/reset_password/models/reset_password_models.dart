class ResetPasswordResponseModel {
  dynamic detail;

  ResetPasswordResponseModel({ this.detail,});

  factory ResetPasswordResponseModel.fromJson(Map<dynamic, dynamic> json) {
    return ResetPasswordResponseModel(
      detail: json.containsKey('msg') ? json['msg'] ?? "" : "",
    );
  }
}
