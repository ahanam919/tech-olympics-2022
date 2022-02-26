import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WhyDispCorrect extends StatelessWidget {
  static const routeName = '/WhyDispCorrect';
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Prescription Medicines'),
        ),
        body: Column(
            children: <Widget>[
              Image.asset('assets/images/MedDisp.png'),
              Container(height: 750, child: Text('hello'))]));
  }
}
