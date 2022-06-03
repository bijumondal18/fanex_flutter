import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpInitial()) {
    on<SignUpEvent>((event, emit) {
      if(event is LoadData)
        {
          emit(SignUpLoading());
          try{
            emit(SignUpLoaded());
          }catch(_){
            print(_);
            emit (SignUpFailed('error'));
          }
        }
      // TODO: implement event handler
    });
  }
}
