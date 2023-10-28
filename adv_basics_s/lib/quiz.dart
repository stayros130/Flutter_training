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
  final List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(chooseAnswer);
    }

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
          child: screenWidget,
          //body: BackColours.withLogoImage(const [Color.fromARGB(255, 84, 45, 150), Color.fromARGB(255, 109, 26, 124)], 'quiz-logo.png'),
          // body: activeScreen
        ),
      ),
    );
  }
}
