import 'package:flutter/material.dart';

class FoodItemCounter extends StatefulWidget {
  const FoodItemCounter({super.key});

  @override
  State<FoodItemCounter> createState() => _FoodItemCounterState();
}

class _FoodItemCounterState extends State<FoodItemCounter> {
  @override
  // ignore: override_on_non_overriding_member
  int counter = 1;
  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      if (counter > 1) {
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(onPressed: increment, child: Text('+')),
        const SizedBox(width: 10),
        Text(counter.toString(), style: TextStyle(fontWeight: FontWeight.w400)),
        const SizedBox(width: 10),
        // Text(counter.toString()),
        ElevatedButton(
          onPressed: decrement,
          child: Text(
            '-',
            style: TextStyle(color: counter > 1 ? Colors.black : Colors.grey),
          ),
        ),
      ],
    );
  }
}
