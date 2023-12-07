import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.buttonText, required this.onPressed});

  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    var buttonWidth = MediaQuery.of(context).size.width / 1.2;
    var buttonHeight = MediaQuery.of(context).size.height / 12;
  
    //if ()

    return SizedBox(
      height: MediaQuery.of(context).size.height / 12, 
      width: MediaQuery.of(context).size.width / 1.2,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}