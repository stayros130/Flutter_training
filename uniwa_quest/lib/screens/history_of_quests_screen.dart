import 'package:flutter/material.dart';
import 'package:uniwa_quest/screens/loaded_screen.dart';
import 'package:uniwa_quest/widgets/custom_button.dart';

class HistoryOfQuestsScreen extends StatelessWidget {
  const HistoryOfQuestsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History Of Quests'),
      ),
      body: SingleChildScrollView( // Wrap the Column in a SingleChildScrollView
        child: Center(
          child: Padding( // Wrap the Column in a Padding widget
      padding: const EdgeInsets.all(8.0), // Add padding here
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(buttonText: 'TESTY', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedScreen()));}),
          // Add more buttons here
        ],
      ),
    ),
        ),
      ),
    );
  }
}