import 'package:flutter/material.dart';
import 'package:uniwa_quest/widgets/custom_button.dart';

class StudentMainScreen extends StatelessWidget {
  StudentMainScreen({super.key});

  int dummyXp = 420;
  bool notification = true;
  Color notificationColor = Colors.red;

  @override
  build(BuildContext context) {
    if (!notification) notificationColor = Colors.transparent;

    return Scaffold(
      appBar: AppBar(
        title: Text('Rank: $dummyXp'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              buttonText: 'Current Quests',
              onPressed: () {},
            ),
            SizedBox(
                height:MediaQuery.of(context).size.height / 20), // Add some space
            Stack(
              children: [
                CustomButton(
                  buttonText: 'Pending Quests',
                  onPressed: () {},
                ),
                Positioned(
                  right: 2,
                  top: 2,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: notificationColor,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 38,
                      minHeight: 38,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/20), // Add some space
            CustomButton(
              buttonText: 'Available Quests',
              onPressed: (){},
            ),
            SizedBox(height: MediaQuery.of(context).size.height/20), // Add some space
            CustomButton(
              buttonText: 'History of Quests',
              onPressed: (){},
            ),
            SizedBox(height: MediaQuery.of(context).size.height/20), // Add some space
          ],
        ),
      ),
    );
  }
}