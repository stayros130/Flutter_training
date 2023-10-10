import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  var currentDiceRoll = 7;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/dice-$currentDiceRoll.png', 
                  width: 200,
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: rollDice,
                  style: TextButton.styleFrom(
                    //padding: const EdgeInsets.all(20),
                    foregroundColor: const Color.fromARGB(255, 234, 147, 84),
                    backgroundColor: const Color.fromARGB(174, 40, 39, 39),
                    textStyle: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  child: const Text(
                    'Roll Dice'
                  ),
                )
              ],
            );
  }
}