import 'package:flutter/material.dart';
import '../widgets/question.dart';
import '../models/quiz_questions.dart';
import './quiz.dart';
import '../widgets/result.dart';

class QuizOTC extends StatefulWidget {
  static const routeName = '/quizscreen';
  @override
  State<StatefulWidget> createState() {
    return _QuizOTCState();
  }
}

class _QuizOTCState extends State<QuizOTC> {
  List<Map<String, Object>> _questions = Questions_OTCandPM;
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    var aBool = true;
    aBool = false;

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
