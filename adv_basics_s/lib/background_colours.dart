import 'package:flutter/material.dart';

class BackColours extends StatelessWidget {
  const BackColours(this.listColors, {super.key});

  final List<Color> listColors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: listColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}