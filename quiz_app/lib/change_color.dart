import 'package:flutter/material.dart';
import 'dart:math';


class ChangeColor extends StatefulWidget(){
  const ChangeColor({super.key});
@override
  State<ChangeColor> createState(){
    return _ChangeColorState();
  }
}


class _ChangeColorState extends State<ChangeColor>{
  final randomizer = Random();
  var colors = (Colors.orange, Colors.deepPurple, Colors.green),
  int select = 0;
  void start(){
    setState(() {
      select = randomizer.nextInt(colors.length);
    });
  }


  @override
  Widget build(context){
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('asset/logo.png', color: colors.elementAt(select),),
          Text('Learn Flutter in a fun way!',
          style: TextStyle(color: colors.elementAt(select), fontSize: 30),),
          OutlinedButton(
            onPressed: start,
            child: Text('Start Quiz'),
            style: TextStyle(color: colors.elementAt(select), fontSize: 30),
          
          )
        ]
    );
  
    
    
  }