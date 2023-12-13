import 'package:flutter/material.dart';
import 'package:uniwa_quest/screens/loaded_screen.dart';
import 'package:uniwa_quest/widgets/custom_button.dart';
import 'package:uniwa_quest/ranks.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}
class _PortfolioScreenState extends State<PortfolioScreen> {

  final int dummyXp = 420;
  final int dummyQuestsCompleted = 22;
  String skillColumn1 = '';
  String skillColumn2 = '';
  final column1Typed = ValueNotifier<bool>(false);
  final column2Typed = ValueNotifier<bool>(false);
  List<String> dummySkills = []; //left empty for testing
  // List<String> dummySkills = [
  //   'Skill #1', 'Skill #2', 'Skill #3', 'Skill #4', 'Skill #5', 'Skill #6'
  // ];
  List<Widget> quests = []; //left empty for testing

  @override
  void initState() {
    super.initState();

    for (var i = 0; i < dummySkills.length; i++) {
      if (i < dummySkills.length / 2) {
        skillColumn1 += '${dummySkills[i]}\n';
      } else {
        skillColumn2 += '${dummySkills[i]}\n';
      }
    }
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> quests = [
      CustomButton(buttonText: 'TESTY', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedScreen()));}),
      CustomButton(buttonText: 'TESTY 1', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedScreen()));}),
      CustomButton(buttonText: 'TESTY 2', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedScreen()));}),
      CustomButton(buttonText: 'TESTY 3', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedScreen()));}),
      CustomButton(buttonText: 'TESTY 4', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedScreen()));}),
      CustomButton(buttonText: 'TESTY 5', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedScreen()));}),
      CustomButton(buttonText: 'TESTY 6', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedScreen()));}),
      CustomButton(buttonText: 'TESTY 7', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedScreen()));}),
      CustomButton(buttonText: 'TESTY 8', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedScreen()));}),
      CustomButton(buttonText: 'TESTY 9', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedScreen()));}),
    ];

    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              child: ListTile(
                title: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'RANK: ',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      TextSpan(
                          text: Ranks().getRank(dummyXp).toString().split('.').last,
                          style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: ListTile(
                //title: Text('Total XP: ${dummyXp.toString()}'),
                title: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Total XP: ',
                        style: TextStyle(color: Colors.white, fontSize: 18,),
                      ),
                      TextSpan(
                          text: dummyXp.toString(),
                          style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: ListTile(
                title: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Quest completed in total: ',
                        style: TextStyle(color: Colors.white, fontSize: 18,),
                      ),
                      TextSpan(
                          text: dummyQuestsCompleted.toString(),
                          style: const TextStyle(color: Colors.white,  fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: ListTile(
                title: const Text('Available Skills:'),
                subtitle: dummySkills.isEmpty
                    ? const Text('No skills available',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(127, 255, 255, 255),
                        fontWeight: FontWeight.w300,
                        ),
                      textAlign: TextAlign.center,
                    )
                    :Row(
                      children: [
                        Column(
                            children: [
                              Text(skillColumn1),
                            ]),
                        Expanded(
                            child: Column(
                          children: [
                            Text(skillColumn2),
                          ],
                        ))
                      ],
                    ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'All the completed Quests:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  if (quests.isEmpty)
                    ...[
                    SizedBox(height: screenHeight/5),
                    const Text('You have not completed any quests',
                      style: TextStyle(
                        fontSize: 24,
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
          ],
        ),
      ),
    );
  }
}
