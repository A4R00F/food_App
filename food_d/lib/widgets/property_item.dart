import 'package:flutter/material.dart';

class PropertyItem extends StatelessWidget {
  const PropertyItem({
    super.key,
    required this.provalue,
    required this.protitle,
  });

  final String provalue;
  final String protitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          protitle,
          style: Theme.of(
            context,
          ).textTheme.headlineSmall!.copyWith(color: Colors.grey),
        ),
        Text(provalue, style: Theme.of(context).textTheme.headlineSmall),
      ],
    );
  }
}
