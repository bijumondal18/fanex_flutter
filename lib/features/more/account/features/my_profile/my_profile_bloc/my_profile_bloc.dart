import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fanex_flutter/features/more/account/features/my_profile/my_profile_repo/my_profile_repo.dart';

import '../my_profile_models/my_profile_models.dart';

part 'my_profile_event.dart';
part 'my_profile_state.dart';

class MyProfileBloc extends Bloc<MyProfileEvent, MyProfileState> {
  MyProfileRepo myProfileRepo;
  MyProfileBloc(this.myProfileRepo) : super(MyProfileInitialState()) {
    on<MyProfileEvent>((event, emit) async{
      if(event is FetchProfileData)
        {
          emit(MyProfileLoadingState());
          try {
            ProfileResponseModel profileResponseModel= await myProfileRepo.getProfileData(event.id);
            emit(MyProfileLoadedState(profileResponseModel));
          }catch(_){
            print(_);
            emit (MyProfileFailedState('error'));
          }
        }
      // TODO: implement event handler
    });
    on<ResetProfileData>((event, emit){
      emit(MyProfileInitialState());
    } );
  }
}
