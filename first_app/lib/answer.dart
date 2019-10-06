import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function action;
  final String answerText;

  Answer(this.answerText, this.action);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          child: Text(answerText),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: action,
        ));
  }
}
