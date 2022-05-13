import 'dart:async';

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
    /*Stream<BannerSliderState> mapEventToState(BannerSliderEvent event) async*{
      if(event is GetBanner){
        yield BannerSliderIsLoading();
        try{
          List<BannersModel> bannerList = await bannerRepo.getBanner();
          yield BannerIsLoaded(bannerList);
        }
        catch(_){
          print(_);
          yield BannerLoadingError('error');
        }
      }
      else if(event is ResetBanner){
        yield BannerSliderIsNotLoad();
      }
    }*/
  }}