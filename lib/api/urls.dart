class FanexURLs {
  static const String baseUrl = 'https://api.staging.fanex.in/'; //staging url
  //static const String baseUrl = 'https://api.fanex.in/'; //live url

//-----------------User Login & User Details URL's-------------------------//
  static const String userRegistration = baseUrl + "accounts/";
  static const String userLogin = baseUrl + "accounts/login/";
  static const String userForgotPassword = baseUrl + "accounts/forgotPassword/";
  static const String userVerifyOTP = baseUrl + "accounts/verifyOtp/";
  static const String userResetPassword = baseUrl + "accounts/resetPassword/";
  static const String userChangePassword = baseUrl + "accounts/changePassword/";
  static const String userDetails = baseUrl + "accounts/"; //accountid=4
  static const String checkUsername = baseUrl + "accounts/checkUsername/"; //username=test

  //Extra URL's
   static String sGetCurrentapkVersion = baseUrl + "extras/apkVersion";
   static String sDownLoadApkLink = baseUrl + "media/adroid/apks/FanEx.apk";
   static String sBannerImageList = baseUrl + "extras/banners/";
   static String sChakraStanding = baseUrl + "chakra/standings/?user=";
   static String sRulesScoring = baseUrl + "docs/rules/";
   static String sGetSignupCoin = baseUrl + "weburls/getsignupcoin/";

  //Competition URL's
   static String sSiteSettings = baseUrl + "competition/sitesettings/";
   static String sLobbyListData = baseUrl + "competition/lobby";
   static String sLobbyListDataSort = baseUrl + "competition/lobby/?sort=";
   static String sUpcomingListData = baseUrl + "competition/upcoming";
   static String sUpcomingListDataSort = baseUrl + "competition/upcoming/?sort=";
   static String sLiveListData = baseUrl + "competition/live";
   static String sLiveListDataSort = baseUrl + "competition/live/?sort=";
   static String sHistoryListData = baseUrl + "competition/history";
   static String sHistoryListDataSort = baseUrl + "competition/history/?sort=";
   static String sHistoryListDataSearch = baseUrl + "competition/history/?q=";
   static String sGetParticipantsStanding = baseUrl + "competition/standings/";
   static String sGetPrizeBreakdown = baseUrl + "competition/prizeBreakdown/?contest=";
   static String sPlayerDetails = baseUrl + "competition/playerDetails/";
   static String sPlayerStatisticsDetails = baseUrl + "competition/statisticDetails/?contestId=";
   static String sContestjoin = baseUrl + "competition/join/";
   static String sContestupdate = baseUrl + "competition/update/";
   static String sPlayerListForFavoritePlayer = baseUrl + "competition/playerList/?";
   static String sNewUserGoToFirstContest = baseUrl + "competition/firstSignUpLobby";
   static String sGetCategoryList = baseUrl + "competition/getcategorylist";
   static String sGetCategoryWiseMatch = baseUrl + "competition/getcategorywisematches/";
   static String sCreateUserContest = baseUrl + "competition/createusercontest/";
   static String sCheckContestStatus = baseUrl + "competition/contestStatus/?contestId=";
   static String sCParticipants = baseUrl + "competition/participants?";
   static String sCSummery = baseUrl + "competition/summary?";
   static String sListUserWithContest = baseUrl + "competition/listUsers/?";
   static String sListFriendWithContest = baseUrl + "competition/listFriends/?";

  //Notification URL's
   static String sListofNotification = baseUrl + "notification/list/";
   static String sClearNotification = baseUrl + "notification/clear/";
   static String sSendRefreshToken = baseUrl + "notification/device/";

  //Friends URL's
   static String sFriendsCount = baseUrl + "friends/count/";
   static String sUserList = baseUrl + "friends/users/";
   static String sUserSearchList = baseUrl + "friends/users/?q=";
   static String sFriendList = baseUrl + "friends/";
   static String sSearchFriendList = baseUrl + "friends/?q=";
   static String sBlockList = baseUrl + "friends/blocked/";
   static String sSearchBlockList = baseUrl + "friends/blocked/?q=";
   static String sFriendAction = baseUrl + "friends/action/";
   static String sFriendInvite = baseUrl + "friends/invites/";

  //Payment URL's
   static String sLinkPaytmNo = baseUrl + "payment/sendOtpPaytm/";
   static String sGetMinMaxWithdrawLimit = baseUrl + "payment/withdrawLimit/";
   static String sGetMinMaxDepositLimit = baseUrl + "payment/depositeLimit/";
   static String sInitiateTransaction = baseUrl + "payment/initiateTransaction/";
   static String sSavePayment = baseUrl + "payment/savePayment/";
   static String sGetWalletAmount = baseUrl + "payment/walletAmount/";
   static String sWithdrawAmount = baseUrl + "payment/payUser/";
  // static String sUpdateKYC=baseUrl+"payment/KYCImageUpload/";
   static String sUpdateKYC = baseUrl + "payment/updateKYC/";
   static String sGetSDKTokenForOnfido = baseUrl + "payment/getOnfidoToken/";
   static String sOnFidoCheck = baseUrl + "payment/onfidoCheck/";
   static String sOnFidoReport = baseUrl + "payment/onfidoReport/";

  //WebView URL's
  static const String privacyPolicyUrl = "https://fanex.in/privacy_policy";
  static const String termsServiceUrl = "https://fanex.in/terms";
  static const String contactUsUrl = "https://fanex.in/contact";
  static const String rulesScoreUrl = "https://fanex.in/rules-score";
  static const String howToPlayUrl = "https://fanex.in/how-to-play";
  static const String rulesScoreUrlForInfoVIew = "https://fanex.in/rules";

  //Razor pay Payment Gateway URL's
   static String razorPaySecretKeyUrl = baseUrl + "payment/razorpay/secret/";
   static String razorPayOrderUrl = baseUrl + "payment/razorpay/order/";
   static String razorPayVerifyUrl = baseUrl + "payment/razorpay/verify/";
   static String razorPayPayoutUrl = baseUrl + "payment/razorpay/payout/";

}
