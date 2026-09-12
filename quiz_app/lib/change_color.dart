import 'package:flutter/material.dart';
import 'dart:math';


class ChangeColor extends StatefulWidget {
  const ChangeColor({super.key});

@override
  State<ChangeColor> createState(){
    return _ChangeColorState();

  }
}



class _ChangeColorState extends State<ChangeColor>{
  final randomizer = Random();


  var colors = [const Color.fromARGB(255, 251, 127, 168), Colors.deepPurple, Colors.blue];
  int select = 0;

  void start(){
    setState(() {
      select = randomizer.nextInt(colors.length);
    });
}


  @override
  Widget build(BuildContext context){
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
          'asset/logo.png', 
          color: colors.elementAt(select),
          ),

          Text(
            'Learn Flutter in a fun way!',
          style: TextStyle(
            color: colors.elementAt(select), 
            fontSize: 30
            ),
          ),

          OutlinedButton(
            onPressed: start,
            style: OutlinedButton.styleFrom(side: BorderSide(color: colors.elementAt(select)),
            textStyle: TextStyle(fontSize: 30),
            ),

            child: Text(
              'Start Quiz',
              style: TextStyle(color: colors.elementAt(select)),
          ),
        ),
      ]
    );
  }  
}