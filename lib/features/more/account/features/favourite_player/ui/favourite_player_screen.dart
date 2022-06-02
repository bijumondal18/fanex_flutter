import 'package:flutter/material.dart';

class FavouritePlayerScreen extends StatefulWidget {
  const FavouritePlayerScreen({Key? key}) : super(key: key);

  @override
  State<FavouritePlayerScreen> createState() => _FavouritePlayerScreenState();
}

class _FavouritePlayerScreenState extends State<FavouritePlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite Player'),
        leading: IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Text('No Favourite Player',style: Theme.of(context).textTheme.bodyText1,),
      ),
    );
  }
}
