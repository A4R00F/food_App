// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:food_d/utilities/app_assets.dart';

class FoodItem {
  final String title;
  final String imageurl;
  final double price;
   bool? isFavorite;

  FoodItem({
    required this.title,
    required this.imageurl,
    required this.price,
    this.isFavorite,
  });
  FoodItem copyWith({
    String? title,
    String? imageurl,
    double? price,
    bool? isFavorite,
  }) {
    return FoodItem(
      title: title ?? this.title,
      imageurl: imageurl ?? this.imageurl,
      price: price ?? this.price,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}

List<FoodItem> food = [
  FoodItem(
    title: "Burger",
    imageurl:
    AppAssets.burger,
    price: 8,
    // isFavorite: true,
  ),
  FoodItem(
    title: "Pizza",
    imageurl:
    AppAssets.pizza,
    price: 8,
  ),
  FoodItem(
    title: "Pizza",
    imageurl:
    AppAssets.pizza,
    price: 8,
  ),
  FoodItem(
    title: "Chicken",
    imageurl:
    AppAssets.chicken,
    price: 8,
    // isFavorite: true,
  ),
  FoodItem(
    title: "Chicken",
    imageurl:
    AppAssets.chicken,
    price: 8,
    // isFavorite: true,
  ),
];
