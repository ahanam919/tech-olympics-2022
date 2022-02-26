import 'package:flutter/material.dart';
import 'whydispcorrect.dart';
import './otc_screen.dart';
import './sharps_screen.dart';

import 'whydispcorrect.dart';

class CustomHomeScreen extends StatelessWidget {
  static const routeName = '/customhome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Learn!'),
        ),
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WhyDispCorrect()));
                  },
                  child: Text(
                    'Why You Should Dispose Correctly',
                    style: TextStyle(fontSize: 40),
                  )),
              SizedBox(height: 50, width: 40),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AboutDispProcess()));
                  },
                  child: Text(
                    'About The Disposal Process',
                    style: TextStyle(fontSize: 40),
                  )),
              SizedBox(height: 50, width: 50),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Otc()));
                  },
                  child: Text(
                    'Different Types of Medications',
                    style: TextStyle(fontSize: 40),
                  )),
            ])));
  }
}
