import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../../utils/shared_preferences.dart';
import '../models/forget_password_models.dart';
import '../repository/forget_password_repository.dart';

part 'forget_password_event.dart';

part 'forget_password_state.dart';

class ForgetPasswordBloc
    extends Bloc<ForgetPasswordEvent, ForgetPasswordState> {
  ForgetPasswordRepository forgetPasswordRepository;

  ForgetPasswordBloc({required this.forgetPasswordRepository})
      : super(ForgetPasswordInitial()) {
    bool? flag = false;
    on<FetchForgetPasswordData>((event, emit) async {
      emit(ForgetPasswordLoading());
      try {
        ForgetPasswordResponseModel forgetPasswordResponseModel =
            await forgetPasswordRepository.doForgetPassword(event.params);
        emit(ForgetPasswordSuccess(forgetPasswordResponseModel));
      } catch (_) {
        print(_);
        emit(ForgetPasswordFailed('error'));
      }
    });
    on<ResetData>((event, emit) {
      emit(ForgetPasswordInitial());
    });
  }
}
