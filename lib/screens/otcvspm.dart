import 'package:flutter/material.dart';
import '../screens/quiz_screen_otc.dart';

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
          title: Text('About The Disposal Process'),
        ),
        body: SingleChildScrollView ( child:Column(
            children: <Widget>[
              Image.asset('assets/images/OTCvsPMs.png'),
             ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuizOTC()));
              },
              child: Text("Quiz")),
        ])));

  }
}
