import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {

  runApp(
     const MaterialApp(
      home: Scaffold(
        body: GradientContainer( [ 
               Color.fromARGB(255, 30, 93, 229),
               Color.fromARGB(255, 30, 103, 229),
               Color.fromARGB(255, 30, 179, 229),
               Color.fromARGB(255, 30, 255, 255),
               ]),
      ),
    ),
  );
}

