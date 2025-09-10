// ignore_for_file: public_member_api_docs, sort_constructors_first
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
        'https://s7d1.scene7.com/is/image/mcdonalds/mcd-double-cheeseburger-uae-1223:nutrition-calculator-tile',
    price: 8,
    // isFavorite: true,
  ),
  FoodItem(
    title: "Pizza",
    imageurl:
        'https://img.pikbest.com/png-images/pizza-logo-vector-graphic-element_1772934.png!f305cw',
    price: 8,
  ),
  FoodItem(
    title: "Pizza",
    imageurl:
        'https://img.pikbest.com/png-images/pizza-logo-vector-graphic-element_1772934.png!f305cw',
    price: 8,
  ),
  FoodItem(
    title: "Chicken",
    imageurl:
        'https://lh6.googleusercontent.com/proxy/mTqivkz8vJtU-Es3Lm3fyRmKLlXrKPh-njLHY77duZ2xFhspBLROlcRCAJ6lE-5mRT0E6CXe08I45gJMMo6p71kzsvY-xFTNZs2PfHf0',
    price: 8,
    // isFavorite: true,
  ),
  FoodItem(
    title: "Chicken",
    imageurl:
        'https://lh6.googleusercontent.com/proxy/mTqivkz8vJtU-Es3Lm3fyRmKLlXrKPh-njLHY77duZ2xFhspBLROlcRCAJ6lE-5mRT0E6CXe08I45gJMMo6p71kzsvY-xFTNZs2PfHf0',
    price: 8,
    // isFavorite: true,
  ),
];
