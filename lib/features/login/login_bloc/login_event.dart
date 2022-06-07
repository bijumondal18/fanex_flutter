part of 'login_bloc.dart';

@immutable
abstract class LoginEvent extends Equatable{}
class FetchLoginData extends LoginEvent{
  Map<String ,dynamic>params=Map();
  FetchLoginData(this.params);
  @override
  // TODO: implement props
  List<Object?> get props => [params];

}
class ResetData extends LoginEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class IsLogin extends LoginEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}