import 'package:flutter/material.dart';
import '../models/quiz_questions.dart';
import './quiz.dart';
import '../widgets/result.dart';
// void main() {
//   runApp(MyApp());
// }

class Quiz extends StatefulWidget {
  static const routeName = '/quizscreen';
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<Map<String, Object>> _questions = Questions;
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Time!'),
        ),
        body: _questionIndex < _questions.length
            ? QuizClass(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
