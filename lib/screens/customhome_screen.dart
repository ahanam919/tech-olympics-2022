import 'package:flutter/material.dart';
import './prescribedmedicines_screen.dart';
import './otc_screen.dart';
import './sharps_screen.dart';

import 'prescribedmedicines_screen.dart';

class CustomHomeScreen extends StatelessWidget {
  static const routeName = '/customhome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('More Information about various types of items'),
        ),
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Prescribed()));
                  },
                  child: Text(
                    'Prescribed Medicines',
                    style: TextStyle(fontSize: 20),
                  )),
              SizedBox(height: 50, width: 50),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Sharps()));
                  },
                  child: Text(
                    'Sharps(needles, syringes, lancets, etc.)',
                    style: TextStyle(fontSize: 20),
                  )),
              SizedBox(height: 50, width: 50),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Otc()));
                  },
                  child: Text(
                    'Over the Counter Medications',
                    style: TextStyle(fontSize: 20),
                  )),
            ])));
  }
}
