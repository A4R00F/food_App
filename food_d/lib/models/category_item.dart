import 'package:food_d/utilities/app_assets.dart';

class CategoryItem {
  final String name;
  final String image;
  final String id;

  CategoryItem({required this.name, required this.image, required this.id});
}

List<CategoryItem> categories = [
  CategoryItem(name: 'Burger', image: AppAssets.burgerIcon, id: '1'),

  CategoryItem(name: 'Chicken', image: AppAssets.chickenIcon, id: '2'),

  CategoryItem(name: 'Pizza', image: AppAssets.pizzaIcon, id: '3'),
];
