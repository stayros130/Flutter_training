import 'package:adv_basics_s/background_colours.dart';
//import 'package:adv_basics_s/first_image.dart';
//import 'package:adv_basics_s/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        body: BackColours.withLogoImage(const [Colors.deepPurple, Colors.purple], 'quiz-logo.png'),
      ),
    ),
  );
}
