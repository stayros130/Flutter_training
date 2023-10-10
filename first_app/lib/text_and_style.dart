import 'package:flutter/material.dart';

class TextAndStyle extends StatelessWidget {
  const TextAndStyle(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
              text,
              style: const TextStyle(
                color: Color.fromARGB(255, 225, 30, 15),
                fontSize: 28,
              ),
            );
  }
}