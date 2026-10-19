import 'package:flutter/material.dart';
import 'package:meals2/screens/categories.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: const Color.fromARGB(255, 255, 182, 193),
  ),
  scaffoldBackgroundColor: const Color.fromARGB(255, 255, 240, 245), 
  appBarTheme: const AppBarTheme().copyWith(
    backgroundColor: const Color.fromARGB(255, 255, 182, 193),
    foregroundColor: const Color.fromARGB(255, 120, 20, 60), 
  ),
  cardTheme: const CardThemeData().copyWith(
    color: const Color.fromARGB(255, 255, 218, 233), 
    margin: const EdgeInsets.all(8),
  ),
  fontFamily: 'CustomFont',
);
void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: CategoriesScreen()
    );
  }
}
