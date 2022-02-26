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
                    'why you should dispose correctly ',
                    style: TextStyle(fontSize: 20),
                  )),
              SizedBox(height: 50, width: 50),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AboutDispProcess()));
                  },
                  child: Text(
                    'about disposal process',
                    style: TextStyle(fontSize: 20),
                  )),
              SizedBox(height: 50, width: 50),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Otc()));
                  },
                  child: Text(
                    'types of meds',
                    style: TextStyle(fontSize: 20),
                  )),
            ])));
  }
}
