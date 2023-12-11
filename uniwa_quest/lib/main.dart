import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import services
import 'package:uniwa_quest/screens/loading_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure widgets binding
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]) // Lock orientation to portrait
    .then((_) {
      runApp(MaterialApp(
        home: const LoadingScreen(),
        themeMode: ThemeMode.dark, // Use dark theme
        darkTheme: ThemeData( // Define dark theme
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
        ),
      ));
    });
}
