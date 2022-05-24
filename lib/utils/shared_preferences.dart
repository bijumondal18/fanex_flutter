import 'package:shared_preferences/shared_preferences.dart';

class FanxPreferance {
  static String logKey="LOGWAITKEY";
   Future <bool> setIsLoggedIn(bool status) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setBool(logKey, status);
  }
   Future <bool?> isLoggedIn() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    print('=====${pref.getBool(logKey)!}');
    return await pref.getBool(logKey)!;
  }
   Future <bool> setLoggedOut() async {
     final SharedPreferences prefs = await SharedPreferences.getInstance();
     return await prefs.remove(logKey);
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
