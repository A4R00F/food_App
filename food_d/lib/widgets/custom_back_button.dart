import 'package:flutter/material.dart';
import 'package:food_d/widgets/custom_secondry_button.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback ontap;
  const CustomBackButton({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return CustomSecondryButton(
      height: 10,
      width: 10,
      onTap: ontap,
      icondata: Icons.chevron_left,
      color: Colors.deepOrangeAccent,
    );
  }
}
