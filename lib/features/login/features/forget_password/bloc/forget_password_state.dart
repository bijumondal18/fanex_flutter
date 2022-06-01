part of 'forget_password_bloc.dart';

abstract class ForgetPasswordState extends Equatable {}

class ForgetPasswordInitial extends ForgetPasswordState {
  @override
  List<Object?> get props => [];
}

class ForgetPasswordLoading extends ForgetPasswordState {
  @override
  List<Object?> get props => [];
}

class ForgetPasswordSuccess extends ForgetPasswordState {
  ForgetPasswordResponseModel forgetPasswordResponseModel;

   ForgetPasswordSuccess(this.forgetPasswordResponseModel);

  ForgetPasswordResponseModel get getLoginUserData =>
      forgetPasswordResponseModel;

  @override
  List<Object?> get props => [forgetPasswordResponseModel];
}

class ForgetPasswordFailed extends ForgetPasswordState {
  final String error;

  ForgetPasswordFailed(this.error);

  @override
  List<Object?> get props => [error];
}