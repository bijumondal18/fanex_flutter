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
import 'features/more/account/features/my_profile/my_profile_bloc/my_profile_bloc.dart';
import 'features/more/account/features/my_profile/my_profile_repo/my_profile_repo.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
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

  late bool? flag = false;

  Future<void>getValidationData() async {
    FanxPreferance pref = FanxPreferance();
    final data = await pref.isLoggedIn();
    setState(() {
      flag = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent, // status bar color
        systemNavigationBarColor: AppColors.white //navigation bar color
        ));
    return MainApp(flag: flag);
  }
}

class MainApp extends StatefulWidget {
  final bool? flag;

  const MainApp({Key? key, required this.flag}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}
class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fanex App',
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      home: MultiBlocProvider(
          providers: [
            BlocProvider<LoginBloc>(
                create: (context) => LoginBloc(LogInRepo())),
            BlocProvider(create: (context) => MyProfileBloc(MyProfileRepo())),
            BlocProvider<BannerSliderBloc>(
                create: (context) => BannerSliderBloc(BannerRepo())),
          ],
          child: widget.flag != false
              ? CustomBottomNavigationBar()
              : WelcomeScreen()),
    );
  }
}
