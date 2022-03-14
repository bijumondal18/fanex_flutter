class FanexURLs {
  static const String baseUrl = 'https://api.staging.fanex.in/'; //staging url
//static const String baseUrl = 'https://api.fanex.in/'; //live url

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
}
