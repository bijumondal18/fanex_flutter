import 'package:shared_preferences/shared_preferences.dart';

class FanxPreferance {
   Future <void> setIsLoggedIn(bool status) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isLogin', status);
  }
   Future <bool> isLoggedIn() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    print('=====${pref.getBool('isLogin')!}');
    return pref.getBool('isLogin')!;
  }
   Future <void> setLoggedOut(bool status) async {
     final SharedPreferences prefs = await SharedPreferences.getInstance();
     prefs.setBool('isLogin', status);
   }
  Future <void> setUserId(String id)async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('id', id);
  }
  Future <String> getUserId()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('id')!;
  }
}
