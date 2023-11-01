

import 'package:adv_basics_s/data/questions.dart';
import 'package:adv_basics_s/questions_summery.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'answer': chosenAnswers[i]});
    }

    return summary;
  }

  @override
  Widget build(context){
    final summaryData = getSummaryData();
    final numTotalQuestions =questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            Text('You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!'),
            const SizedBox(height: 30,),
            QuestionsSummary(summaryData),
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