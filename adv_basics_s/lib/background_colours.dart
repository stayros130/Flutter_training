import 'package:flutter/material.dart';

class BackColours extends StatelessWidget {
  BackColours(this.listColors, {super.key});

  BackColours.withLogoImage(List<Color> listColors, String imageName, {super.key}): listColors = listColors, imageName = imageName;

  List<Color> listColors;

  String imageName = 'empty.png';

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
      child: Center(
        child: Align(
          alignment: const Alignment(0, -0.3),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
                Image.asset(
                  'assets/images/$imageName', 
                  width: 300,
                  height: 300,
                )
              ]
        ),
      ),
    ),
   );
  }
}