import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../models/reset_password_models.dart';
import '../repository/reset_password_repository.dart';

part 'reset_password_event.dart';
part 'reset_password_state.dart';

class ResetPasswordBloc
    extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordRepository resetPasswordRepository;

  ResetPasswordBloc({required this.resetPasswordRepository})
      : super(ResetPasswordInitial()) {
    bool? flag = false;
    on<FetchResetPasswordData>((event, emit) async {
      emit(ResetPasswordLoading());
      try {
        ResetPasswordResponseModel resetPasswordResponseModel =
        await resetPasswordRepository.doResetPassword(event.params);
        emit(ResetPasswordSuccess(resetPasswordResponseModel));
      } catch (_) {
        print(_);
        emit(ResetPasswordFailed('error'));
      }
    });
    on<ResetData>((event, emit) {
      emit(ResetPasswordInitial());
    });
  }
}

