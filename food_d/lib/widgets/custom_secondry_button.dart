import 'package:flutter/material.dart';

class CustomSecondryButton extends StatelessWidget {
  const CustomSecondryButton({
    super.key,
    required this.height,
    required this.width,
    required this.onTap,
    required this.icondata,
    required this.color,
  });
  final double height;
  final double width;
  final VoidCallback onTap;
  final IconData icondata;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.grey[200],

      child: InkWell(
        onTap: onTap,
        child: Icon(icondata, color: color),
      ),
    );
    //     return InkWell(
    //   onTap: onTap,
    //   child: Container(
    //     width: width,
    //     height: height,
    //     color: Colors.grey[200],
    //     child: Icon(icondata, color: color),
    //   ),
    // );
  }
}
