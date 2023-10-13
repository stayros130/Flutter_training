import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.listColors, {super.key});

  final List<Color> listColors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: listColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Align(
          alignment: const Alignment(0, -0),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
                Image.asset(
                  'assets/images/quiz-logo.png', 
                  width: 300,
                  height: 300,
                ),
                const SizedBox(height: 80),
                const Text(
                  'Learn Flutter the fun way!',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 26,
                  ),
                ),
                const SizedBox(height: 20),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'Start Quiz',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255)
                    ),
                  ),
                )
              ]
        ),
      ),
    ),
   );
  }
}