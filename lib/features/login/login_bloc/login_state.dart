part of 'login_bloc.dart';

@immutable
abstract class LoginState extends Equatable{}

class LoginInitialState extends LoginState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class LoginLoadingState extends LoginState{

  @override
  // TODO: implement props
  List<Object?> get props => [];

}
class LoginLoadedState extends LoginState{
  LoginResponseModel loginResponseModel;
  LoginLoadedState(this.loginResponseModel);
  LoginResponseModel get getLoginUserData=>loginResponseModel;
  @override
  // TODO: implement props
  List<Object?> get props => [loginResponseModel];
}
class LoginFailedState extends LoginState{
  final String msg;
  LoginFailedState(this.msg);
  @override
  // TODO: implement props
  List<Object?> get props =>[msg];

}
class IsLoginState extends LoginState{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}