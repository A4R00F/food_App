import 'package:flutter/material.dart';
import 'package:food_d/pages/food_item.dart';
// import 'package:food_d/widgets/custom_back_button.dart';
// import 'package:food_d/widgets/favorite_item.dart';
import 'package:food_d/widgets/food_banner_details.dart';
import 'package:food_d/widgets/food_item_counter.dart';
import 'package:food_d/widgets/property_item.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({super.key, required this.foodindex});
  // final FoodItem foodItem;
  final int foodindex;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    FoodBannerDetails(foodindex: foodindex),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
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
                            'Lorem Ipsum Lorem Lorem Ipsum Lorem  Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem  ',
                            style: Theme.of(context).textTheme.titleSmall!
                                .copyWith(color: Colors.grey),
                          ),
                          SizedBox(height: 0.10),
                        ],
                      ),
                    ),
                  ],
                ),
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
