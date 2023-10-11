import 'package:flutter/material.dart';

class FirstImage extends StatelessWidget {
  const FirstImage({super.key});

  @override
  Widget build(context){
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/quiz-logo.png', 
                  width: 200,
                )
              ]
    );
  }
}