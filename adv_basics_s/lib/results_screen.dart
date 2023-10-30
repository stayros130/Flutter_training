

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  @override
  Widget build(context){
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            const Text('you dummy. You believed to have answerd anyting correct? LOL, funny!'),
            const SizedBox(height: 30,),
            const Text('Your wrong answers'),
            const SizedBox(height: 30,),
            TextButton(
              onPressed: () {}, 
              child: const Text("restart stupid")
            ),
          ],
        ),
      ),
    );
  }
}