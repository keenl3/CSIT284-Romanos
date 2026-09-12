import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children:[
          Image.asset(
            'asset/logo.png',
            width: 300,
            color: const Color.fromARGB(193, 255, 240, 240),
          ),

          const SizedBox(height: 80),
          const Text(
            'Learn Flutter the fun way!',
            style:TextStyle(
              color:  Color.fromARGB(193, 255, 240, 240),
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),

          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,

              style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(color: Color.fromARGB(255, 239, 101, 161)),
            ),

            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          )
        ]
      )
    ); 
  }
}
