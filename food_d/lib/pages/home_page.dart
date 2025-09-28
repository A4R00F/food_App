// import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';
import 'dart:io';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_d/models/category_item.dart';
import 'package:food_d/pages/food_details.dart';
import 'package:food_d/pages/food_item.dart';
import 'package:food_d/utilities/app_assets.dart';
import 'package:food_d/widgets/food_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textScale = MediaQuery.of(context).textScaleFactor;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                AppAssets.burger,
                height: MediaQuery.of(context).size.height * 0.35,
                // width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Text(
              'Welcome to the Food App!',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 24 * textScale,
              ),
            ),
          ),

          SizedBox(height: size.height * 0.02),
          if (Platform.isWindows)
            Text(
              "This is A Windows System",
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontSize: 16 * textScale,
                fontWeight: FontWeight.bold,
              ),
            ),
          if (Platform.isAndroid)
            Text(
              "This is An Android App",
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontSize: 16 * textScale,
                fontWeight: FontWeight.bold,
              ),
            ),
          if (Platform.isIOS)
            Text(
              "This is An iOS App",
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontSize: 16 * textScale,
                fontWeight: FontWeight.bold,
              ),
            ),
          if (Platform.isMacOS)
            Text(
              "This is A MacOS System",
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontSize: 16 * textScale,
                fontWeight: FontWeight.bold,
              ),
            ),
          SizedBox(height: 10),
          SizedBox(
            height: size.height * 0.2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: size.width * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white54,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                            categories[index].image,
                            width: size.width * 0.2,
                            // height: size.height * 0.05,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            categories[index].name,
                            style: Theme.of(context).textTheme.labelLarge!
                                .copyWith(
                                  fontSize: 14 * textScale,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              // shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
            ),
          ),

          SizedBox(height: 10),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: food.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(FoodDetails.routeName, arguments: index)
                        .then((onValue) {
                          debugPrint(
                            "The Value Returned In Home Screen is $onValue",
                          );
                          setState(() {});
                        });
                  },
                  child: (FoodGrid(foodindex: index)),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
