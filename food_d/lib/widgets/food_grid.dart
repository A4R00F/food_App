import 'package:flutter/material.dart';
import 'package:food_d/pages/food_item.dart';
import 'package:food_d/widgets/favorite_item.dart';

class FoodGrid extends StatelessWidget {
  final int foodindex;
  final List<FoodItem>? filteredfood;
  const FoodGrid({
    super.key,
    required this.foodindex,
    required this.filteredfood,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: 150,
      padding: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),

        borderRadius: BorderRadius.circular(12),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    filteredfood![foodindex].imageurl,
                    height: constraints.maxWidth * .8,
                    width: size.width * 0.4,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: FavoriteItem(
                      // favorite
                      foodindex: foodindex,
                      height: 20,
                      width: 20,
                      // constraints: constraints,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: constraints.maxHeight * .13,
              child: FittedBox(
                child: Text(
                  filteredfood![foodindex].title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * .13,
              child: FittedBox(
                child: Text(
                  '${filteredfood![foodindex].price}\$',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
