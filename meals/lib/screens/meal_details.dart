import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealDetailsScreens extends StatelessWidget {
  const MealDetailsScreens ({super.key, required this.meal});
  
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Image.network(
        meal.imageUrl,
        width: double.infinity,
        height: 300,
        fit: BoxFit.cover,
      ),
    );
  }
}