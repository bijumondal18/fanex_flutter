import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fanex_flutter/features/login/login_repo/login_repo.dart';
import 'package:fanex_flutter/features/login/models/login_models.dart';
import 'package:fanex_flutter/utils/shared_preferences.dart';
import 'package:meta/meta.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LogInRepo logInRepo;
  LoginBloc(this.logInRepo) : super(LoginInitialState()) {
    bool? flag=false;
    on<FetchLoginData>((event, emit) async{
      emit (LoginLoadingState());
      try {
          LoginResponseModel loginResponseModel = await logInRepo.doLogin(
              event.params);
          emit(LoginLoadedState(loginResponseModel));
      }
      catch(_){
        print(_);
        emit (LoginFailedState('error'));
      }
    }
    );
    on<ResetData>((event, emit) {
      emit(LoginInitialState());
    });
    on<IsLogin>((event, emit) async{
      emit(LoginLoadingState());
      try{
        FanxPreferance pref = FanxPreferance();
        flag = await pref.isLoggedIn();
        if(flag==true){
          emit(IsLoginState());
        }
      }
      catch(_){
        print(_);
        emit (LoginFailedState('error'));
      }

    });
  }
}