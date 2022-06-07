part of 'otp_screen_bloc.dart';

abstract class OtpScreenState extends Equatable {
  const OtpScreenState();
}

class OtpScreenInitial extends OtpScreenState {
  @override
  List<Object> get props => [];
}
class OtpScreenLoading extends OtpScreenState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class OtpScreenSuccess extends OtpScreenState {
  final OtpScreenResponseModel otpScreenResponseModel;

  OtpScreenSuccess(this.otpScreenResponseModel);

  OtpScreenResponseModel get getLoginUserData =>
      otpScreenResponseModel;

  @override
  List<Object?> get props => [otpScreenResponseModel];
}

class OtpScreenFailed extends OtpScreenState {
  final String error;

  OtpScreenFailed(this.error);

  @override
  List<Object?> get props => [error];
}
