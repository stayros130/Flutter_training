import 'package:flutter/material.dart';
import 'package:uniwa_quest/widgets/accepted_quest_modal.dart';

class CurrentQuestsScreen extends StatelessWidget {
  CurrentQuestsScreen({super.key});

  final List<Widget> quests = []; //left empty for testing
  // final List<Widget> quests = [
  //   const AcceptedQuestModal(
  //           title: 'Current Quest Test',
  //           skills: 'Java', xp: 420, description: 'testy'
  //         ),
  //   const AcceptedQuestModal(
  //           title: 'Current Quest Test1',
  //           skills: 'C++', xp: 690, description: 'testonity'
  //         ),
  // ]; // Replace with your actual list of quests
  //final List<Widget> quests = []; 
  
  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accepted Quests'),
      ),
      body: SingleChildScrollView( // Wrap the Column in a SingleChildScrollView
        child: Padding( // Wrap the Column in a Padding widget
          padding: const EdgeInsets.all(8.0), // Add padding here
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (quests.isEmpty)
                  ...[
                  SizedBox(height: screenHeight/3),
                  const Text('You have not accepted any quests',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(127, 255, 255, 255),
                      fontWeight: FontWeight.w400,
                      ),
                    textAlign: TextAlign.center,
                    ),
                  ]
                else 
                    for (int i = 0; i < quests.length; i++)
                      ...[
                         quests[i],
                         const SizedBox(height: 20),
                       ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}