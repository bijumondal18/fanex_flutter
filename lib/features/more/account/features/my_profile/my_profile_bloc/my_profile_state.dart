part of 'my_profile_bloc.dart';

abstract class MyProfileState extends Equatable {
  const MyProfileState();
}

class MyProfileInitialState extends MyProfileState {
  @override
  List<Object> get props => [];
}
class MyProfileLoadingState extends MyProfileState{
  @override
  // TODO: implement props
  List<Object?> get props =>[];
}
class MyProfileLoadedState extends MyProfileState{
  ProfileResponseModel profileResponseModel;
  MyProfileLoadedState(this.profileResponseModel);
  ProfileResponseModel get getProfileResponseModel=> profileResponseModel;
  @override
  // TODO: implement props
  List<Object?> get props => [profileResponseModel];
}
class MyProfileFailedState extends MyProfileState{
  String msg;
  MyProfileFailedState(this.msg);
  @override
  // TODO: implement props
  List<Object?> get props => [msg];

}