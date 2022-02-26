import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';
import './quiz_screen.dart';

class GeneralTips extends StatelessWidget {
  static const routeName = '/generaltips';
  late WebViewController _controller;

  _loadHtmlFromAssets() async {
    String fileText =
        await rootBundle.loadString('assets/htmlfiles/GeneralTips.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('General Tips and Tricks'),
        ),
        body: Column(children: <Widget>[
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Quiz()));
              },
              child: Container(
                  height: 750,
                  child: WebView(
                    initialUrl: 'about:blank',
                    onWebViewCreated: (WebViewController webviewcontroller) {
                      _controller = webviewcontroller;
                      _loadHtmlFromAssets();
                    },
                  )))
        ]));
  }
}