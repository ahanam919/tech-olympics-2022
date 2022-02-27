import 'package:flutter/material.dart';
import '/screens/home_screen.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Congratulations! You really know your stuff!';
    } else if (resultScore <= 12) {
      resultText = 'Not bad! Read through once again.';
    } else if (resultScore <= 16) {
      resultText = 'Eh, you might want to try again. ';
    } else {
      resultText = 'Try Again!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
            onPressed: () => resetHandler(),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  //replace with "replace"
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Text('Go Home'),
          )
        ],
      ),
    );
  }
}
