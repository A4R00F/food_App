// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:food_d/utilities/app_assets.dart';

class FoodItem {
  final String title;
  final String imageurl;
  final double price;
  bool? isFavorite;
  final String? categoryid;
  final String id;

  FoodItem({
    required this.title,
    required this.imageurl,
    required this.price,
    this.isFavorite,
    required this.categoryid,
    required this.id,
  });
  FoodItem copyWith({
    String? title,
    String? imageurl,
    double? price,
    bool? isFavorite,
    String? categoryid,
    String? id,
  }) {
    return FoodItem(
      title: title ?? this.title,
      imageurl: imageurl ?? this.imageurl,
      price: price ?? this.price,
      isFavorite: isFavorite ?? this.isFavorite,
      categoryid: categoryid ?? this.categoryid,
      id: id ?? this.id,
    );
  }
}

List<FoodItem> food = [
  FoodItem(
    title: "Burger",
    imageurl: AppAssets.burger,
    price: 8,
    categoryid: '1',
    id:"burger1"
    // isFavorite: true,
  ),
  FoodItem(
    title: "Pizza",
    imageurl: AppAssets.pizza,
    price: 8,
    categoryid: '3',
    id: "pizza 1"
  ),
  FoodItem(
    title: "Pizza",
    imageurl: AppAssets.pizza,
    price: 8,
    categoryid: '3',
    id:"pizaa 2"
  ),
  FoodItem(
    title: "Pizza",
    imageurl: AppAssets.pizza,
    price: 8,
    categoryid: '3',
    id:"pizza 3"
  ),
  FoodItem(
    title: "Chicken",
    imageurl: AppAssets.chicken,
    price: 8,
    categoryid: '2',
    id:"chicken 1"
    // isFavorite: true,
  ),
  FoodItem(
    title: "Chicken",
    imageurl: AppAssets.chicken,
    price: 8,
    categoryid: '2',
    id: "chicken 2"
    // isFavorite: true,
  ),
];
