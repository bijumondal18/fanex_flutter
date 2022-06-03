part of 'sign_up_bloc.dart';

abstract class SignUpState extends Equatable {
  const SignUpState();
}

class SignUpInitial extends SignUpState {
  @override
  List<Object> get props => [];
}
class SignUpLoading extends SignUpState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class SignUpLoaded extends SignUpState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class SignUpFailed extends SignUpState{
  final String msg;
  SignUpFailed(this.msg);
  @override
  // TODO: implement props
  List<Object?> get props => [msg];

}