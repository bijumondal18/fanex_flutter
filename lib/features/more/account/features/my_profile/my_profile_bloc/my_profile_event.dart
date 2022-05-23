part of 'my_profile_bloc.dart';

abstract class MyProfileEvent extends Equatable {
}
class FetchProfileData extends MyProfileEvent{
  String id;
  FetchProfileData(this.id);
  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
class ResetProfileData extends MyProfileEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}