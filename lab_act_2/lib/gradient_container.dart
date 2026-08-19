import 'package:flutter/material.dart';
import 'package:lab_act_2/styled_text.dart';



class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.pinkAccent,
            const Color.fromARGB(255, 102, 67, 231),
            const Color.fromARGB(255, 183, 93, 236),
          ],
        ),
      ),
      child: Center(child: StyledText()
        ),
    );
  }
}
