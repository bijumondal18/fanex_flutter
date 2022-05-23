class ProfileResponseModel {
  User? user;
  dynamic about;
 dynamic phone;
  dynamic longitude;
  dynamic latitude;
 dynamic countryCode;
 dynamic address ='';
  dynamic email;
  dynamic deviceType;
  dynamic deviceId;
  dynamic hasJoinedContest;
  dynamic wallet;
  dynamic walletRs;
  dynamic referenceCode ='';
  dynamic imageURL;
  dynamic friendInvCount;
  dynamic friendCount;
  dynamic verifiedEmail;
  dynamic coinsEarned;
  dynamic pushNotification;
  dynamic numberNotifications;
  dynamic numberTotalNotifications;
  dynamic favoritePlayer;
  dynamic prizeAmount;
  dynamic walletAmount;
  dynamic ack;
  dynamic potentialWinningCoins;
  dynamic potentialWinningRs;
  dynamic isKycVerified;
  dynamic checkId ='';
  dynamic coinsEarnedInContest;
  dynamic cashEarnedInContest;
  dynamic cashNotPutInPlay;
  dynamic cashAvailableToWithdraw;

  ProfileResponseModel({
    this.user,
    this.about,
    this.phone,
    this.longitude,
    this.latitude,
    this.countryCode,
    this.address,
    this.email,
    this.deviceType,
    this.deviceId,
    this.hasJoinedContest,
    this.wallet,
    this.walletRs,
    this.referenceCode,
    this.imageURL,
    this.friendInvCount,
    this.friendCount,
    this.verifiedEmail,
    this.coinsEarned,
    this.pushNotification,
    this.numberNotifications,
    this.numberTotalNotifications,
    this.favoritePlayer,
    this.prizeAmount,
    this.walletAmount,
    this.ack,
    this.potentialWinningCoins,
    this.potentialWinningRs,
    this.isKycVerified,
    this.checkId,
    this.coinsEarnedInContest,
    this.cashEarnedInContest,
    this.cashNotPutInPlay,
    this.cashAvailableToWithdraw});

  factory ProfileResponseModel.fromJson(Map<dynamic, dynamic> json) {
    return ProfileResponseModel(
        user : json['user'] != null ? new User.fromJson(json['user']) : null,
        about : json['about'],
        phone : json['phone'],
        longitude : json['longitude'],
        latitude : json['latitude'],
        countryCode : json['countryCode'],
        address : json['address'],
        email : json['email'],
        deviceType : json['deviceType'],
        deviceId : json['deviceId'],
        hasJoinedContest : json['hasJoinedContest'],
        wallet : json['wallet'],
        walletRs : json['walletRs'],
    referenceCode : json['referenceCode'],
    imageURL : json['imageURL'],
    friendInvCount : json['friendInvCount'],
    friendCount : json['friendCount'],
    verifiedEmail : json['verifiedEmail'],
    coinsEarned : json['coinsEarned'],
    pushNotification : json['pushNotification'],
    numberNotifications : json['numberNotifications'],
    numberTotalNotifications : json['numberTotalNotifications'],
    favoritePlayer : json['favoritePlayer'],
    prizeAmount : json['prizeAmount'],
    walletAmount : json['walletAmount'],
    ack : json['ack'],
    potentialWinningCoins : json['potentialWinningCoins'],
    potentialWinningRs : json['potentialWinningRs'],
    isKycVerified : json['is_kyc_verified'],
    checkId : json['checkId'],
    coinsEarnedInContest : json['coins_earned_in_contest'],
        cashEarnedInContest : json['cash_earned_in_contest'],
        cashNotPutInPlay : json['cash_not_put_in_play'],
    cashAvailableToWithdraw : json['cash_available_to_withdraw'],
    );
  }

}
class User {

  dynamic id;
  dynamic firstName;
  dynamic lastName;
  dynamic username;

  User({this.id, this.firstName, this.lastName, this.username});

  factory User.fromJson(Map<dynamic, dynamic> json) {
    return User(
      id : json['id'],
      firstName : json['first_name'],
      lastName : json['last_name'],
      username : json['username'],
    );
  }
}