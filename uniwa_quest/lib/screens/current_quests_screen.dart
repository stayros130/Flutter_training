import 'package:flutter/material.dart';
import 'package:uniwa_quest/widgets/accepted_quest_modal.dart';

class CurrentQuestsScreen extends StatelessWidget {
  const CurrentQuestsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accepted Quests'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AcceptedQuestModal(
              title: 'Current Quest Test',
              skills: 'Java', xp: 420, description: 'testy'
            ),
          ],
        ),
      ),
    );
  }
}