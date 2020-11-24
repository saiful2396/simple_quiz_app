import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestions;
  final int questionsIndex;

  Quiz({
    @required this.questions,
    @required this.questionsIndex,
    @required this.answerQuestions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionsIndex]['questionsText']),
        ...(questions[questionsIndex]['answers'] as List<Map<String, Object>>)
            .map(
              (answer) => Answer(
                ()=>answerQuestions(answer['score']),
                answer['text'],
              ),
            )
            .toList(),
      ],
    );
  }
}
