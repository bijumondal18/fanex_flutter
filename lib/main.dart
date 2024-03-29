import 'package:fanex_flutter/common/common.dart';
import 'package:flutter/material.dart';
import 'package:fanex_flutter/features/screens.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.transparent, // status bar color
      systemNavigationBarColor: AppColors.white //navigation bar color
      ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fanex App',
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      home: const WelcomeScreen(),
    );
  }
}
