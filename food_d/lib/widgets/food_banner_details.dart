import 'package:flutter/material.dart';
import 'package:food_d/pages/food_item.dart';
import 'package:food_d/widgets/custom_back_button.dart';
import 'package:food_d/widgets/favorite_item.dart';

class FoodBannerDetails extends StatelessWidget {
  const FoodBannerDetails({super.key, required this.foodindex});
  // final FoodItem foodItem;
  final int foodindex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(food[foodindex].imageurl),
                fit: BoxFit.fill,
              ),
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // زرار الرجوع
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.blueGrey,
                        shape: BoxShape.circle,
                      ),
                      child: CustomBackButton(),
                    ),
                    // زرار الفافوريت
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black54,
                        shape: BoxShape.circle,
                      ),
                      child: FavoriteItem(
                        foodindex: foodindex,
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
