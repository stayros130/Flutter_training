import 'package:flutter/material.dart';
import 'package:uniwa_quest/screens/loaded_screen.dart';
import 'package:uniwa_quest/screens/student_main_screen.dart';

class LoadingScreen extends StatelessWidget {
 const LoadingScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size; // Get screen size
    bool isLoading = true; // Set loading state
    
    // Simulate loading 
    Future.delayed(const Duration(seconds: 3), () {
      isLoading = false;
      Navigator.pushReplacement(
        context,
        //MaterialPageRoute(builder: (context) => LoadedScreen()),  //left for testing
        MaterialPageRoute(builder: (context) => StudentMainScreen()),
      );
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: screenSize.height/20), // Add some space
            const Text(
              'Welcome Young Adventurer to\nThe Uniwa Guild',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ), // Show data
            SizedBox(height: screenSize.height/20), // Add some space

//----------------- Image Part -----------------

            // Image.asset('lib/assets/images/kitty.png'), // Add image from assets
            // SizedBox(height: screenSize.height/20), // Add some space

//----------------- Image Part -----------------

            const Text(
              'Collecting Necessary Data\nPlease Wait…',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ), // Show data
            SizedBox(height: screenSize.height/20),
            SizedBox(
              width: screenSize.width/2, // Screen width
              height: screenSize.height/4, // Screen height
              child: const CircularProgressIndicator(), // Loading animation
            ),
            SizedBox(height: screenSize.height/20), // Add some space
            const Text('Loading...', style: TextStyle(fontSize: 18)), 
          ],
        ),
      ),
    );
  }
}