import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewEx extends StatefulWidget {
  @override
  State<WebViewEx> createState() => _WebViewExState();
}

class _WebViewExState extends State<WebViewEx> {
  late WebViewController controller;

  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://www.luminartechnolab.com/"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WebView"),backgroundColor: Colors.green,),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
