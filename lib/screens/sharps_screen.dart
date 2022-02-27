import 'package:flutter/material.dart';
import '../screens/quiz_screen_sharps.dart';

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
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuizSharps()));
              },
              child: Text("Quiz")),
        ])));
  }
}
