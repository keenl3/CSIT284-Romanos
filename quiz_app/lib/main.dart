import 'package:flutter/material.dart';
import 'package:quiz_app/change_color.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 230, 34, 100),
          ),
          child: Center(
            child: const ChangeColor(),
          ),
        ),
      ),
    )
  );
}
  