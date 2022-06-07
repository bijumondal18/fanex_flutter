part of 'reset_password_bloc.dart';

abstract class ResetPasswordEvent extends Equatable {}

class FetchResetPasswordData extends ResetPasswordEvent {
  Map<String, dynamic> params = Map();

  FetchResetPasswordData(this.params);
  @override
  List<Object?> get props => [params];
}

class ResetData extends ResetPasswordEvent {
  @override
  List<Object?> get props => [];
}