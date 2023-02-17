import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionsIndex;
  final VoidCallback answerQuestion;

  Quiz(
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionsIndex,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          (questions[questionsIndex]['questionText'] as String),
        ),
        ...(questions[questionsIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
