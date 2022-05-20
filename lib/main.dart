import 'package:fanex_flutter/bottom_navigation_bar.dart';
import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/features/lobby/bloc/banner_slider_bloc.dart';
import 'package:fanex_flutter/features/login/login_repo/login_repo.dart';
import 'package:fanex_flutter/utils/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:fanex_flutter/features/screens.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/lobby/bannerRepo/banner_repo.dart';
import 'features/login/login_bloc/login_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() {
    super.initState();
    getValidationData();
  }
  late bool flag=false;
   getValidationData() async{
    FanxPreferance pref = FanxPreferance();
    final data= await pref.isLoggedIn();
    print('befjbwvbjvwb$data');
    setState(() {
      flag=data;
      print('@@@$flag');
    });
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent, // status bar color
        systemNavigationBarColor: AppColors.white //navigation bar color
        ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fanex App',
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      home: MultiBlocProvider(providers: [
        BlocProvider<LoginBloc>(
            create: (context) => LoginBloc(LogInRepo())),
        BlocProvider<BannerSliderBloc>(
            create: (context) => BannerSliderBloc(BannerRepo())),
      ], child: flag!=true? WelcomeScreen():CustomBottomNavigationBar()),
    );
  }
}
