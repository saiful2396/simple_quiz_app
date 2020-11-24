import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _questions = const [
    {
      'questionsText': 'What\'s your favourite colors?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 3},
        {'text': 'Black', 'score': 6},
        {'text': 'Pink', 'score': 7}
      ],
    },
    {
      'questionsText': 'What\'s your favourite Animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 4},
        {'text': 'Cat', 'score': 6},
        {'text': 'Lion', 'score': 12},
        {'text': 'Tiger', 'score': 15}
      ],
    },
    {
      'questionsText': 'Who\'s your favourite Instructor?',
      'answers': [
        {'text': 'Saiful', 'score': 1},
        {'text': 'Saiful', 'score': 1},
        {'text': 'Saiful', 'score': 1},
        {'text': 'Saiful', 'score': 1}
      ],
    },
  ];
  var _questionsIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionsIndex = 0;
      _totalScore = 0;
    });
  }
  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionsIndex += 1;
    });

    if (_questionsIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more question!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Quiz App'),
      ),
      body: _questionsIndex < _questions.length
          ? Quiz(
              questions: _questions,
              questionsIndex: _questionsIndex,
              answerQuestions: _answerQuestions,
            )
          : Result(_totalScore, _resetQuiz),
    );
  }
}
