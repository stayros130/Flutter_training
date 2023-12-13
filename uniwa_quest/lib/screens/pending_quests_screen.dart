import 'package:flutter/material.dart';
import 'package:uniwa_quest/screens/loaded_screen.dart';
import 'package:uniwa_quest/widgets/custom_button.dart';

class PendingQuestsScreen extends StatelessWidget {
  PendingQuestsScreen({super.key});

  List<Widget> quests = []; //left empty for testing
  
  
  @override
  Widget build(BuildContext context) {

    // List<Widget> quests = [
    //   CustomButton(buttonText: 'TESTY', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedScreen()));}),
    //   CustomButton(buttonText: 'TESTY 1', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedScreen()));}),
    //   CustomButton(buttonText: 'TESTY 2', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedScreen()));}),
    //   CustomButton(buttonText: 'TESTY 3', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedScreen()));}),
    //   CustomButton(buttonText: 'TESTY 4', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedScreen()));}),
    //   CustomButton(buttonText: 'TESTY 5', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedScreen()));}),
    //   CustomButton(buttonText: 'TESTY 6', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedScreen()));}),
    //   CustomButton(buttonText: 'TESTY 7', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedScreen()));}),
    //   CustomButton(buttonText: 'TESTY 8', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedScreen()));}),
    //   CustomButton(buttonText: 'TESTY 9', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedScreen()));}),
    // ];

    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pending Quests'),
      ),
      body: SingleChildScrollView( // Wrap the Column in a SingleChildScrollView
        child: Center(
          child: Padding( // Wrap the Column in a Padding widget
      padding: const EdgeInsets.all(8.0), // Add padding here
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (quests.isEmpty)
            ...[
            SizedBox(height: screenHeight/3),
            const Text('You have do not have any quests pending',
              style: TextStyle(
                fontSize: 21,
                color: Color.fromARGB(127, 255, 255, 255),
                fontWeight: FontWeight.w400,
                ),
              textAlign: TextAlign.center,
              )
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