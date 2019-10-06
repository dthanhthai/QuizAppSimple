import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function answerAction;
  final num questionIndex;
  final List<Map<String, Object>> questionsList;

  Quiz(
      {@required this.answerAction,
      @required this.questionIndex,
      @required this.questionsList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionsList[questionIndex]["questionText"]),
        // ignore: sdk_version_ui_as_code
        ...(questionsList[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answer['text'], () => answerAction(answer['score']));
        }).toList()
      ],
    );
  }
}
