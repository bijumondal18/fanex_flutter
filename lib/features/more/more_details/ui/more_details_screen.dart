import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

class MoreDetailsScreen extends StatefulWidget {
  const MoreDetailsScreen({Key? key, required int index}) : super(key: key);

  @override
  State<MoreDetailsScreen> createState() => _MoreDetailsScreenState();
}

class _MoreDetailsScreenState extends State<MoreDetailsScreen> {
  @override
  void initState() {
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More Details Screen'),
      ),
      body: const WebView(
        initialUrl: 'https://fanex.in/how-to-play',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
