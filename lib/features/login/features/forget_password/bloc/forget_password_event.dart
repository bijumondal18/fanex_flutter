part of 'forget_password_bloc.dart';

abstract class ForgetPasswordEvent extends Equatable {}

class FetchForgetPasswordData extends ForgetPasswordEvent {
  Map<String, dynamic> params = Map();

  FetchForgetPasswordData(this.params);
  @override
  List<Object?> get props => [params];
}

class ResetData extends ForgetPasswordEvent {
  @override
  List<Object?> get props => [];
}

