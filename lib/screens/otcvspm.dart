import 'package:flutter/material.dart';

class OTCvsPM extends StatefulWidget {
  const OTCvsPM({Key? key}) : super(key: key);

  @override
  _OTCvsPMState createState() => _OTCvsPMState();
}

class _OTCvsPMState extends State<OTCvsPM> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: Text('AboutDispProcess'),
        ),
        body: Column(
            children: <Widget>[
              Image.asset('assets/images/OTCvsPMs.png')
            ]));
  }
}
