import 'package:flutter/material.dart';
import 'package:food_d/pages/food_item.dart';
import 'package:food_d/widgets/custom_back_button.dart';
import 'package:food_d/widgets/favorite_item.dart';
// import 'package:food_d/widgets/custom_back_button.dart';
// import 'package:food_d/widgets/favorite_item.dart';
// import 'package:food_d/widgets/food_banner_details.dart';
import 'package:food_d/widgets/food_item_counter.dart';
import 'package:food_d/widgets/property_item.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({super.key});
  // final FoodItem foodItem;
  // final int foodindex; استبدلناها بال  ModalRoute

  @override
  Widget build(BuildContext context) {
    final int foodindex = ModalRoute.of(context)!.settings.arguments as int;
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    pinned: true,
                    leading: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomBackButton(
                        ontap: () {
                          Navigator.of(
                            context,
                          ).pop<String>(food[foodindex].title);
                        },
                      ),
                    ),
                    expandedHeight: size.height * 0.4,
                    flexibleSpace: FlexibleSpaceBar(
                      background: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.grey[200]),
                        child: Image.network(
                          food[foodindex].imageurl,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FavoriteItem(
                          foodindex: foodindex,
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ],
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.all(8.0),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate([
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      food[foodindex].title,
                                      style: Theme.of(
                                        context,
                                      ).textTheme.titleLarge,
                                    ),
                                    Text(
                                      "Buffalo Burger",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                FoodItemCounter(),
                              ],
                            ),

                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                PropertyItem(
                                  protitle: "Size",
                                  provalue: "Medium",
                                ),
                                VerticalDivider(indent: 0, endIndent: 0),
                                PropertyItem(
                                  provalue: "10-20 Min",
                                  protitle: "Cooking",
                                ),
                                VerticalDivider(indent: 0, endIndent: 0),
                                PropertyItem(
                                  provalue: "150 k-cal",
                                  protitle: "Callories",
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                            Text(
                              'Lorem Ipsum Lorem Lorem Ipsum Lorem  Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Lorem Ipsum Lorem Lorem Ipsum Lorem  Ipsum Lorem IpsumLorem Ipsum Lorem Lorem Ipsum Lorem  Ipsum Lorem IpsumLorem Ipsum Lorem Lorem Ipsum Lorem  Ipsum Lorem IpsumLorem Ipsum Lorem Lorem Ipsum Lorem  Ipsum Lorem IpsumLorem Ipsum Lorem Lorem Ipsum Lorem  Ipsum Lorem IpsumLorem Ipsum Lorem Lorem Ipsum Lorem  Ipsum Lorem Ipsum ',
                              style: Theme.of(context).textTheme.titleSmall!
                                  .copyWith(color: Colors.grey),
                            ),
                            SizedBox(height: 0.10),
                          ],
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "\$ ${food[foodindex].price}",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.deepOrange,
                      ),
                      onPressed: () {},
                      child: Text("Checkout"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
