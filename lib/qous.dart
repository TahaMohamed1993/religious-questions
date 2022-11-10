// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'answer.dart';
import 'questions.dart';

class Qous extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndxes;
  final Function(int s) answerQuestion;

  const Qous(
      {required this.questions,
      required this.questionIndxes,
      required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questionText: questions[questionIndxes]['questionText'].toString(),
        ),
        ...(questions[questionIndxes]['answers'] as List<Map<String, Object>>)
            .map(
              (e) => Answer(
                  aswerQuestions: e['text'].toString(),
                  x: (() => answerQuestion(int.parse(e['score'].toString())))),
            )
            .toList(),
      ],
    );
  }
}
