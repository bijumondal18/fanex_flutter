import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../models/otp_screen_model.dart';
import '../repository/otp_screen_repository.dart';
part 'otp_screen_event.dart';
part 'otp_screen_state.dart';

class OtpScreenBloc extends Bloc<OtpScreenEvent, OtpScreenState> {
  OtpScreenRepository otpScreenRepository;

  OtpScreenBloc({required this.otpScreenRepository})
      : super(OtpScreenInitial()) {
    on<FetchOtpScreenData>((event, emit) async {
      emit(OtpScreenLoading());
      try {
        OtpScreenResponseModel forgetPasswordResponseModel =
        await otpScreenRepository.doVerify(event.params);
        emit(OtpScreenSuccess(forgetPasswordResponseModel));
      } catch (_) {
        print(_);
        emit(OtpScreenFailed('error'));
      }
    });
    on<ResetData>((event, emit) {
      emit(OtpScreenInitial());
    });
  }
}

