import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function onResetQuiz;

  Result(this.totalScore, this.onResetQuiz);

  String get resultPhare {
    String resultText;

    if (totalScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (totalScore <= 12) {
      resultText = 'Pretty likable!';
    } else if (totalScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Center(
            child: Text(
              resultPhare,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        FlatButton(
          child: Text(
            'Reset quiz',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          textColor: Colors.blue,
          onPressed: onResetQuiz,
        )
      ],
    );
  }
}
