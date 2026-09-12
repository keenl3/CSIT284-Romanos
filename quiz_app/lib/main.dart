import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 230, 34, 100),
          ),
          child: const Quiz(),
        ),
      ),
    )
  );
}
  