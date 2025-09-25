import 'package:flutter/material.dart';
import 'package:food_d/widgets/custom_secondry_button.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSecondryButton(
      height: 30,
      width: 30,
      onTap: () {
        Navigator.of(context).pop();
      },
      icondata: Icons.chevron_left,
      color: Colors.deepOrangeAccent,
    );
  }
}
