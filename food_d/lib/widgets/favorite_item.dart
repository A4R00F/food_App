import 'package:flutter/material.dart';
import 'package:food_d/pages/food_item.dart';

class FavoriteItem extends StatefulWidget {
  const FavoriteItem({
    super.key,
    required this.constraints,
    required this.foodindex,
  });

  final BoxConstraints constraints;
  final int foodindex;
  @override
  State<FavoriteItem> createState() => _FavoriteItemState();
}

class _FavoriteItemState extends State<FavoriteItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.constraints.maxWidth * .18,
      color: Colors.grey[50],
      child: InkWell(
        onTap: () => setState(() {
          food[widget.foodindex] = food[widget.foodindex].copyWith(
            isFavorite: !(food[widget.foodindex].isFavorite ?? false),
          );
        }),
        child: food[widget.foodindex].isFavorite == true
            ? Icon(Icons.favorite, color: Colors.red)
            : Icon(Icons.favorite_border, color: Colors.black),
      ),
    );
  }
}
