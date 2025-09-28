import 'package:flutter/material.dart';
import 'package:food_d/pages/food_details.dart';
import 'package:food_d/pages/food_item.dart';
// import 'package:food_d/widgets/favorite_item.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final favoriteFood = food
        .where((favoriteitem) => favoriteitem.isFavorite == true)
        .toList(); // favorite item بتلف على كل اللي في ال List food
    if (favoriteFood.isEmpty) {
      return LayoutBuilder(
        builder: (context, constraints) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.favorite_border, size: 100, color: Colors.grey),
            SizedBox(height: 20),
            Text(
              'No favorite items yet!',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }
    return ListView.builder(
      itemCount: favoriteFood.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            int targetindex = food.indexOf(favoriteFood[index]);

            Navigator.of(context)
                .pushNamed(
                  FoodDetails.routeName,
                  arguments: targetindex,
                  // لأنه هناك في ال صفحة ال details بيستقبل ال index بتاع ال food مش بتاع ال favorite_food
                )
                .then((onValue) {
                  debugPrint(
                    "The Value Returned In Favorite Screen is $onValue",
                  );
                  setState(() {});
                });

            /// Then بتشتغل لما بيحصل عملية ال Pop من الصفحة  ااي عملت لها push
          },
          child: Card(
            color: Colors.white,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) => Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      favoriteFood[index].imageurl,
                      height: size.width * .3,
                      width: constraints.maxWidth * .4,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            favoriteFood[index].title,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            favoriteFood[index].price.toString(),
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: IconButton(
                      onPressed: () {
                        final targetItem = favoriteFood[index];
                        final targetIndex = food.indexOf(targetItem);
                        setState(() {
                          food[targetIndex] = food[targetIndex].copyWith(
                            isFavorite: false,
                          );
                          favoriteFood.remove(targetItem);
                        });
                      },
                      // => food[widget.foodIndex] =
                      //     food[widget.foodIndex].copyWith(isFavorite: false),
                      icon: Icon(Icons.favorite),
                      color: Theme.of(context).primaryColor,
                      iconSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
