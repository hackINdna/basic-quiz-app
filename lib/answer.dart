import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerHandler;
  final String answerText;

  const Answer({required this.answerHandler, required this.answerText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: answerHandler,
      child: Text(answerText),
    );
  }
}
