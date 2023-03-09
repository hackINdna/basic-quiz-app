import 'package:flutter/material.dart';
import 'package:new_app/answer.dart';
import 'package:new_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final int questionIndex;
  final Function answerTheQuestion;

  const Quiz({
    super.key,
    required this.questionList,
    required this.questionIndex,
    required this.answerTheQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 100),
        Question(questionList[questionIndex]["question"] as String),
        ...(questionList[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              answerHandler: () => answerTheQuestion(answer["score"]),
              answerText: answer["text"].toString());
        }).toList()
      ],
    );
  }
}
