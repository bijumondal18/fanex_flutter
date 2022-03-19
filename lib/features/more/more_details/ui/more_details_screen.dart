import 'package:flutter/material.dart';

class MoreDetailsScreen extends StatelessWidget {

  const MoreDetailsScreen( {Key? key, required int index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More Details Screen'),
      ),
      
    );
  }
}
