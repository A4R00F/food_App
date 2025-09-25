import 'package:flutter/material.dart';
import 'package:food_d/pages/food_item.dart';
import 'package:food_d/widgets/custom_secondry_button.dart';

class FavoriteItem extends StatefulWidget {
  const FavoriteItem({
    super.key,

    // required this.constraints,
    required this.foodindex,
    required this.height,
    required this.width,
  });
  final double height;
  final double width;

  // final BoxConstraints constraints;
  final int foodindex;
  @override
  State<FavoriteItem> createState() => _FavoriteItemState();
}

class _FavoriteItemState extends State<FavoriteItem> {
  @override
  Widget build(BuildContext context) {
    return CustomSecondryButton(
      height: widget.height,
      width: widget.width,
      onTap: () => setState(() {
        food[widget.foodindex] = food[widget.foodindex].copyWith(
          isFavorite: !(food[widget.foodindex].isFavorite ?? false),
        ); // علشان اغير قيمة ال Isfavorite,
      }),
      icondata: food[widget.foodindex].isFavorite == true
          ? Icons.favorite
          : Icons.favorite_border,
      color: food[widget.foodindex].isFavorite == true
          ? Colors.red
          : Colors.black,
    );

    // Container(
    //   width: widget.width,
    //   height: widget.height,
    //   color: Colors.grey[50],
    //   child: InkWell(
    //     onTap: () => setState(() {
    //       food[widget.foodindex] = food[widget.foodindex].copyWith(
    //         isFavorite: !(food[widget.foodindex].isFavorite ?? false),
    //       ); // علشان اغير قيمة ال Isfavorite,
    //     }),
    //     child: food[widget.foodindex].isFavorite == true
    //         ? Icon(Icons.favorite, color: Colors.red)
    //         : Icon(Icons.favorite_border, color: Colors.black),
    //   ),
    // );
  }
}
