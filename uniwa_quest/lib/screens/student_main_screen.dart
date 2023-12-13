import 'package:flutter/material.dart';
import 'package:uniwa_quest/screens/current_quests_screen.dart';
import 'package:uniwa_quest/screens/guild_board_screen.dart';
import 'package:uniwa_quest/screens/portfolio_screen.dart';
import 'package:uniwa_quest/screens/pending_quests_screen.dart';
import 'package:uniwa_quest/widgets/custom_button.dart';
import 'package:uniwa_quest/ranks.dart';

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
        title: Text(
            'Rank: ${Ranks().getRank(dummyXp).toString().split('.').last}'), // Get rank from xp
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              buttonText: 'Current Quests',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CurrentQuestsScreen()));
              },
            ),
            SizedBox(
                height:MediaQuery.of(context).size.height / 20), // Add some space
            Stack(
              children: [
                CustomButton(
                  buttonText: 'Pending Quests',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PendingQuestsScreen()));
                  },
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
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GuildBoardScreen()));
              },
            ),
            SizedBox(height: MediaQuery.of(context).size.height/20), // Add some space
            CustomButton(
              buttonText: 'History of Quests',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PortfolioScreen()));
              },
            ),
            SizedBox(height: MediaQuery.of(context).size.height/20), // Add some space
          ],
        ),
      ),
    );
  }
}