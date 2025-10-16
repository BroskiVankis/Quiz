import 'package:adv_basics/questions_summary/questions_identifier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(context) {
    final isCorrect = itemData['user_answer'] == itemData['correct_answer'];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          QuestionsIdentifier(
            questionIndex: itemData['question_index'] as int,
            isCorrect: isCorrect,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  itemData['user_answer'] as String,
                  style: const TextStyle(color: Colors.redAccent),
                ),
                Text(
                  itemData['correct_answer'] as String,
                  style: const TextStyle(color: Colors.greenAccent),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
