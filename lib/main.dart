import 'package:fanex_flutter/bottom_navigation_bar.dart';
import 'package:fanex_flutter/common/common.dart';
import 'package:fanex_flutter/features/lobby/bloc/banner_slider_bloc.dart';
import 'package:fanex_flutter/features/login/login_repo/login_repo.dart';
import 'package:fanex_flutter/utils/shared_preferences.dart';
import 'package:fanex_flutter/widgets/custom_circleindicator.dart';
import 'package:flutter/material.dart';
import 'package:fanex_flutter/features/screens.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/lobby/bannerRepo/banner_repo.dart';
import 'features/login/login_bloc/login_bloc.dart';
import 'features/more/account/features/my_profile/my_profile_bloc/my_profile_bloc.dart';
import 'features/more/account/features/my_profile/my_profile_repo/my_profile_repo.dart';
import 'features/notification/repository/notification_repo.dart';

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
  NotificationRepo notificationRepo=NotificationRepo();
  @override
  
  Widget build(BuildContext ctx) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent, // status bar color
        systemNavigationBarColor: AppColors.white //navigation bar color
        ));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fanex App',
        theme: AppTheme.lightTheme,
        themeMode: ThemeMode.light,
        home:Stack(
          children:[
            Container(),
            BlocProvider<LoginBloc>(
              create: (context) => LoginBloc(LogInRepo())..add(IsLogin()),
              child: BlocConsumer<LoginBloc, LoginState>(
                listener: (context, state) {
                  // TODO: implement listener
                  if (state is IsLoginState) {
                    notificationRepo.getNotificationData('1d8b5647c65064298642d1155a01e1ed273b3b23');
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                CustomBottomNavigationBar()));
                  }
                  else{
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MainApp()));
                  }
                },
                builder: (context, state){
                  if(state is LoginLoadingState)
                  {
                    return CustomCircleIndicator();
                  }
                  return Stack(
                    children: [
                      Container()
                    ],
                  );
                },
              ),
            ),
          ]
        ),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<LoginBloc>(create: (context) => LoginBloc(LogInRepo())),
      BlocProvider(create: (context) => MyProfileBloc()),
      BlocProvider<BannerSliderBloc>(
          create: (context) => BannerSliderBloc(BannerRepo())),
    ], child: WelcomeScreen());
  }
}