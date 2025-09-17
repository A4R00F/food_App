import 'package:flutter/material.dart';
import 'package:food_d/pages/food_item.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({super.key, required this.foodItem});
  final FoodItem foodItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(), // Make The Back Button Defalut
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          foodItem.title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
    );
  }
}
