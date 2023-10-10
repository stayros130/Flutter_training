//import 'package:first_app/text_and_style.dart';
import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.listColors, {super.key});

  final List<Color> listColors;
 

  @override
  Widget build(context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: listColors,
               begin: startAlignment,
               end: endAlignment,
            ),
          ),
          child: const Center(
            child: DiceRoller(),
          ),
        );
  }
}