import 'package:flutter/cupertino.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class InternetConnection extends StatelessWidget {
  InternetConnection({Key? key}) : super(key: key);

  Future<bool> hasConnection = InternetConnectionChecker().hasConnection;
  final text = 'No Internet';

  Widget build(BuildContext context) {
    if (hasConnection == true) {
      return Text('Internet');
    } else {
      return Text('No internet');
    }
  }
}
