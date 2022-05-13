class FanexURLs {
  //static const String baseUrl = 'https://api.staging.fanex.in/'; //staging url
  static const String baseUrl = 'https://api.fanex.in/'; //live url

//---------------------------------------------------//
  static const String userRegistration = baseUrl + "accounts/";
  static const String userLogin = baseUrl + "accounts/login/";
  static const String userForgotPassword = baseUrl + "accounts/forgotPassword/";
  static const String userVerifyOTP = baseUrl + "accounts/verifyOtp/";
  static const String userResetPassword = baseUrl + "accounts/resetPassword/";
  static const String userChangePassword = baseUrl + "accounts/changePassword/";
  static const String userDetails = baseUrl + "accounts/"; //accountid=4
  static const String checkUsername =
      baseUrl + "accounts/checkUsername/"; //username=test

  static const String privacyPolicyUrl = "https://fanex.in/privacy_policy";
  static const String termsServiceUrl = "https://fanex.in/terms";
  static const String contactUsUrl = "https://fanex.in/contact";
  static const String rulesScoreUrl = "https://fanex.in/rules-score";
  static const String howToPlayUrl = "https://fanex.in/how-to-play";
  static const String rulesScoreUrlForInfoVIew = "https://fanex.in/rules";
  static const String sBannerImageList = baseUrl + "extras/banners/";
}
