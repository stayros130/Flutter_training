import 'package:adv_basics_s/questions_screen.dart';
import 'package:adv_basics_s/start_screen.dart';
import 'package:flutter/material.dart';

const List<Color> listPurple = [
  Color.fromARGB(255, 84, 45, 150),
  Color.fromARGB(255, 109, 26, 124)
];

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget activeScreen = const StartScreen();

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: listPurple,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
          //body: BackColours.withLogoImage(const [Color.fromARGB(255, 84, 45, 150), Color.fromARGB(255, 109, 26, 124)], 'quiz-logo.png'),
          // body: activeScreen
        ),
      ),
    );
  }
}
