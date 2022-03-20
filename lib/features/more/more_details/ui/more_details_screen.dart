import 'package:fanex_flutter/api/urls.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

class MoreDetailsScreen extends StatelessWidget {

  const MoreDetailsScreen({Key? key, required int index})
      : super(key: key);

  String initialUrl(index) {
    String initialUrl = '';
    switch (index) {
      case 1:
        initialUrl = FanexURLs.howToPlayUrl;
        break;
      case 2:
        initialUrl = 'https://fanex.in/contact';
        break;
      case 3:
        initialUrl = 'https://fanex.in/rules-score';
        break;
      case 4:
        initialUrl = 'https://fanex.in/terms';
        break;
      case 5:
        initialUrl = 'https://fanex.in/privacy_policy';
        break;
    }
    return initialUrl;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More Details Screen'),
      ),
      body: WebView(
        initialUrl: initialUrl(1),
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
