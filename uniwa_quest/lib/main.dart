import 'package:flutter/material.dart';
import 'package:uniwa_quest/screens/loading_screen.dart';

void main() {
  runApp(MaterialApp(
    home: const LoadingScreen(),
    themeMode: ThemeMode.dark, // Use dark theme
    darkTheme: ThemeData( // Define dark theme
      brightness: Brightness.dark,
      primarySwatch: Colors.blue,
    ),
  ));
}
