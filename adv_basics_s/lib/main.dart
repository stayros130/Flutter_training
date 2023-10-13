//import 'package:adv_basics_s/background_colours.dart';
//import 'package:adv_basics_s/first_image.dart';
import 'package:adv_basics_s/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        //body: BackColours.withLogoImage(const [Color.fromARGB(255, 84, 45, 150), Color.fromARGB(255, 109, 26, 124)], 'quiz-logo.png'),
        body: StartScreen([Color.fromARGB(255, 84, 45, 150), Color.fromARGB(255, 109, 26, 124)]),
      ),
    ),
  );
}
