import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetAll;

  const Result({super.key, required this.resultScore, required this.resetAll});

  String get finalResult {
    String resultText;
    if (resultScore <= 10) {
      resultText = "You are verry Innocent!";
    } else if (resultScore <= 15) {
      resultText = "You are Good";
    } else {
      resultText = "You are very bad!!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          finalResult,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            // color: Colors.black38,
          ),
        ),
        TextButton(
          onPressed: resetAll,
          child: const Text(
            "Reset & Go Back",
            style: TextStyle(color: Colors.blue),
          ),
        )
      ],
    );
  }
}
