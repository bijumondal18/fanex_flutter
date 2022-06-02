part of 'banner_slider_bloc.dart';

@immutable
abstract class BannerSliderState extends Equatable {}

class BannerSliderIsNotLoad extends BannerSliderState{
  @override
  List<Object?> get props => [];
}
class BannerSliderIsLoading extends BannerSliderState {
  @override
  List<Object?> get props => [];

}
class BannerIsLoaded extends BannerSliderState{
final List<BannersModel> bannersList;

  BannerIsLoaded(this.bannersList);
  List <BannersModel> get getBannersList=>bannersList;

  @override
  List<Object> get props => [bannersList];

}
class BannerLoadingError extends BannerSliderState{
  final String msg;

  BannerLoadingError(this.msg);

  @override
  List<Object?> get props => [msg];

}