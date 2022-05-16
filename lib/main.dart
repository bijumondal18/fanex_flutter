import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/features/lobby/bloc/banner_slider_bloc.dart';
import 'package:flutter/material.dart';
import 'package:fanex_flutter/features/screens.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/lobby/bannerRepo/banner_repo.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle( const SystemUiOverlayStyle(
      statusBarColor: AppColors.transparent,// status bar color
      systemNavigationBarColor: AppColors.white //navigation bar color
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fanex App',
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<BannerSliderBloc>(
          create:(context)=> BannerSliderBloc(BannerRepo()))
        ],
          child: const WelcomeScreen()),
    );
  }
}