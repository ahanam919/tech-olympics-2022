import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Otc extends StatelessWidget {
  static const routeName = '/findpharm';
  late WebViewController _controller;
  String url =
      "https://safe.pharmacy/drug-disposal/results/?distance=10&address=";
  Future<void> launchTarget(String zipcode) async {
    print(url);
    if (await canLaunch(url + zipcode))
      await launch(url + zipcode);
    else
      throw "Could not launch";
  }

  _loadHtmlFromAssets() async {
    String fileText = await rootBundle.loadString('assets/htmlfiles/OTC.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('OTC Medicines'),
        ),
        body: Column(children: <Widget>[
          Container(
              height: 750,
              child: WebView(
                initialUrl: 'about:blank',
                onWebViewCreated: (WebViewController webviewcontroller) {
                  _controller = webviewcontroller;
                  _loadHtmlFromAssets();
                },
              ))
        ]));
  }
}
