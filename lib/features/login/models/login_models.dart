class LoginResponseModel {
  dynamic ack;
  dynamic msg;
  dynamic user_id;
  dynamic account_id;
  dynamic token;
  dynamic hasJoinedContest;
  dynamic wallet;
  dynamic walletRs;

  LoginResponseModel({ this.ack,  this.msg, this.user_id, this.account_id,
     this.token, this.hasJoinedContest, this.wallet, this.walletRs});

  factory LoginResponseModel.fromJson(Map<dynamic,dynamic>json){
    return LoginResponseModel(
      ack: json['ack'],
      msg: json.containsKey('msg') ? json['msg'] ?? "" : "",
      user_id: json['user_id'],
      account_id: json['account_id'],
      token: json['token'],
      hasJoinedContest: json['hasJoinedContest'],
      wallet: json['wallet'],
      walletRs: json['walletRs'],
    );
  }
}