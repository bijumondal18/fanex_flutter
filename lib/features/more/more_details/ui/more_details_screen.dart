import 'package:fanex_flutter/api/urls.dart';
import 'package:fanex_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

class MoreDetailsScreen extends StatelessWidget {
  const MoreDetailsScreen({Key? key, required int index}) : super(key: key);

  String initialUrl(index) {
    String initialUrl = '';
    switch (index) {
      case 1:
        initialUrl = FanexURLs.howToPlayUrl;
        break;
      case 2:
        initialUrl = FanexURLs.contactUsUrl;
        break;
      case 3:
        initialUrl = FanexURLs.rulesScoreUrl;
        break;
      case 4:
        initialUrl = FanexURLs.termsServiceUrl;
        break;
      case 5:
        initialUrl = FanexURLs.privacyPolicyUrl;
        break;
    }
    return initialUrl;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'More Details'),
      body: WebView(
        initialUrl: initialUrl(1),
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
