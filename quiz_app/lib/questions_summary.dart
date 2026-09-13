import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: isCorrectAnswer 
                    ? const Color.fromARGB(255, 242, 3, 130) 
                    : const Color.fromARGB(255, 233, 107, 202),
                    shape: BoxShape.circle,
                  ),

                
                child: Text(((data['question_index'] as int) + 1).toString(), 
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 254, 254),
                  fontFamily: 'CustomFont',
                  fontSize: 16,
                  ),
                  ),
                ),
                const SizedBox(width: 20),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: GoogleFonts.kumbhSans(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Your answer: ${data['user_answer']}',
                        style: GoogleFonts.madimiOne(
                          color: Color.fromARGB(255, 246, 104, 244),
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Correct answer: ${data['correct_answer']}',
                        style: GoogleFonts.newsCycle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
              ]
            );
          }).toList(),
        ),
      ),
    );
  }
}