import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectAnswer;
  final String answerText;
  Answer(this.selectAnswer, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: RaisedButton(
        onPressed: selectAnswer,
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
      ),
    );
  }
}
