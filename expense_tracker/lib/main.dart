import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/services.dart';


// UI color pallete
var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 252, 231, 234),
  brightness: Brightness.light,
);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]).then((fn) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 240, 245),
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: const Color.fromARGB(255, 220, 20, 90), 
          foregroundColor: Colors.white,

        titleTextStyle: const TextStyle(
        fontFamily: 'CustomFont', 
        fontSize: 22,
        fontWeight: FontWeight.bold,
  ),
        ),
      
        cardTheme: const CardThemeData().copyWith(
        color: const Color.fromARGB(255, 220, 20, 90), 
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        
      ),

        
      ),
      themeMode: ThemeMode.light,
      home: const Expenses(),
    ),
    );
  });
}