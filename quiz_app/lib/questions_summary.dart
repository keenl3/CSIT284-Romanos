import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            final isCorrectAnswer = data['user_answer'] == data['correct_answer'];

            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(((data['question_index'] as int) + 1).toString(), 
                style: const TextStyle(
                  color: Color.fromARGB(255, 239, 163, 189),
                  fontSize: 16,
                  )
                ),
              ]
            );
          }).toList(),
        ),
      ),
    );
  }
}