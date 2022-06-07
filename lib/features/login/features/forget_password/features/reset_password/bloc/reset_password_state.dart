part of 'reset_password_bloc.dart';

abstract class ResetPasswordState extends Equatable {
  get resetPasswordResponseModel => null;
}

class ResetPasswordInitial extends ResetPasswordState {
  @override
  List<Object?> get props => [];
}

class ResetPasswordLoading extends ResetPasswordState {
  @override
  List<Object?> get props => [];
}

class ResetPasswordSuccess extends ResetPasswordState {
  final ResetPasswordResponseModel resetPasswordResponseModel;

  ResetPasswordSuccess(this.resetPasswordResponseModel);

  ResetPasswordResponseModel get getResetPasswordData =>
      resetPasswordResponseModel;

  @override
  List<Object?> get props => [resetPasswordResponseModel];
}

class ResetPasswordFailed extends ResetPasswordState {
  final String error;

  ResetPasswordFailed(this.error);

  @override
  List<Object?> get props => [error];
}