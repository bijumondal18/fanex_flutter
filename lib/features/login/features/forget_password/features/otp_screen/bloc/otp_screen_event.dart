part of 'otp_screen_bloc.dart';

abstract class OtpScreenEvent extends Equatable {}
class FetchOtpScreenData extends OtpScreenEvent {
  Map<String, dynamic> params = Map();

  FetchOtpScreenData(this.params);

  @override
  List<Object?> get props => [params];
}

class ResetData extends OtpScreenEvent {
  @override
  List<Object?> get props => [];
}

// class OtpScreen extends OtpScreenEvent {
//   @override
//   List<Object?> get props => [];
// }
