import 'package:flutter/material.dart';
import 'package:new_app/answer.dart';
import 'package:new_app/quiz.dart';
import 'package:new_app/result.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questionList = const [
    {
      "question": "What's your favourite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 6},
        {"text": "Blue", "score": 4},
        {"text": "Green", "score": 3},
        {"text": "Orange", "score": 7},
      ],
    },
    {
      "question": "What's your favourite animal?",
      "answers": [
        {"text": "Dog", "score": 1},
        {"text": "Cat", "score": 3},
        {"text": "Snake", "score": 5},
        {"text": "Rabbit", "score": 4},
        {"text": "Lion", "score": 10},
      ],
    },
    {
      "question": "What's your Lucky Number?",
      "answers": [
        {"text": 1, "score": 1},
        {"text": 2, "score": 2},
        {"text": 3, "score": 3},
        {"text": 4, "score": 4},
        {"text": 5, "score": 5},
      ],
    }
  ];

  void _resetAll() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerTheQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questionList.length) {
      print("more question");
    } else {
      print("Final Result");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: _questionIndex < _questionList.length
            ? Quiz(
                questionList: _questionList,
                questionIndex: _questionIndex,
                answerTheQuestion: _answerTheQuestion,
              )
            : Result(resultScore: _totalScore, resetAll: _resetAll),
      ),
    );
  }
}
