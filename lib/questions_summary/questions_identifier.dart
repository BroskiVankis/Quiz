import 'package:flutter/material.dart';

class QuestionsIdentifier extends StatelessWidget {
const QuestionsIdentifier({super.key, required this.questionIndex, required this.isCorrect});

  final int questionIndex;
  final bool isCorrect;

  @override
  Widget build(context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: isCorrect ? Colors.green : Colors.red,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          questionNumber.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}