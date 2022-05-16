import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fanex_flutter/features/lobby/bannerRepo/banner_repo.dart';
import 'package:fanex_flutter/features/lobby/models/BannersModel.dart';
import 'package:meta/meta.dart';
part 'banner_slider_event.dart';
part 'banner_slider_state.dart';

class BannerSliderBloc extends Bloc<BannerSliderEvent, BannerSliderState> {
  BannerRepo bannerRepo;
  BannerSliderBloc(this.bannerRepo) : super(BannerSliderIsNotLoad()){
  on<GetBanner>((event, emit)async{
      emit (BannerSliderIsLoading());
      try{
        List<BannersModel> banner = await bannerRepo.getBanner();
        emit( BannerIsLoaded(banner));
      }
      catch(_){
        print(_);
        emit (BannerLoadingError('error'));
      }
    });
    on<ResetBanner>((event, emit) {
      emit(BannerSliderIsNotLoad());
    });
  }}