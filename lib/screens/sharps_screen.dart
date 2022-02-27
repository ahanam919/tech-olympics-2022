import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AboutDispProcess extends StatelessWidget {
  static const routeName = '/nottodo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('About The Disposal Process'),
        ),
        body: Column(
            children: <Widget>[
              Image.asset('assets/images/process.png')
            ]));
  }
}
