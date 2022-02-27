import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
import './quiz_screen.dart';

class AboutDispProcess extends StatelessWidget {
  static const routeName = '/nottodo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('About The Disposal Process'),
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Quiz()));
              },
              child: Text("Quiz")),
          Image.asset('assets/images/process.png')
        ])));
  }
}
