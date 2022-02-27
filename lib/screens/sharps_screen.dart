import 'package:flutter/material.dart';

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
          Image.asset('assets/images/process.png'),
        ])));
  }
}
