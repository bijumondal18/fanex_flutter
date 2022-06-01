import 'package:fanex_flutter/api/urls.dart';
import 'package:fanex_flutter/widgets/custom_circleindicator.dart';
import 'package:fanex_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

class MoreDetailsScreen extends StatefulWidget {
  final int index;
   MoreDetailsScreen({Key? key, required this.index}) : super(key: key);

  @override
  State<MoreDetailsScreen> createState() => _MoreDetailsScreenState();
}

class _MoreDetailsScreenState extends State<MoreDetailsScreen> {
List<String> title =[
  'How to play/FAQ',
  'Help/Contact us',
  'Rules & Scoring',
  'Terms of use',
  'Privacy policy',
];

  String initialUrl(int index) {
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

bool isFinished=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomDefaultAppBar(title: title[widget.index-1]),
      body: Stack(
        children: [
          WebView(
          onPageFinished: (finish){
            setState(() {
              isFinished=false;
            });
          },
          initialUrl: initialUrl(widget.index),
          javascriptMode: JavascriptMode.unrestricted,
        ),
          Visibility(visible: isFinished,
              child: CustomCircleIndicator()),]
      ),
    );
  }
}
