import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './otcvspm.dart';
import './sharpsdispprocess.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Otc extends StatelessWidget {
  static const routeName = '/findpharm';
  // late WebViewController _controller;
  // String url =
  //     "https://safe.pharmacy/drug-disposal/results/?distance=10&address=";
  // Future<void> launchTarget(String zipcode) async {
  //   print(url);
  //   if (await canLaunch(url + zipcode))
  //     await launch(url + zipcode);
  //   else
  //     throw "Could not launch";
  // }

  // _loadHtmlFromAssets() async {
  //   String fileText = await rootBundle.loadString('assets/htmlfiles/OTC.html');
  //   _controller.loadUrl(Uri.dataFromString(fileText,
  //           mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
  //       .toString());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SafeMed"),
        ),
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SharpsDispP()));
                  },
                  child: Text(
                    'shaprs disp process',
                    style: TextStyle(fontSize: 30),
                  )),
              SizedBox(height: 30, width: 40),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OTCvsPM()));
                  },
                  child: Text(
                    'otc vs pm',
                    style: TextStyle(fontSize: 30),
                  )),
            ])));
  }
}
