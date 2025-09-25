// import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_d/pages/food_details.dart';
import 'package:food_d/pages/food_item.dart';
import 'package:food_d/widgets/food_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    final TextScale = MediaQuery.of(context).textScaleFactor;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                'https://s7d1.scene7.com/is/image/mcdonalds/mcd-double-cheeseburger-uae-1223:nutrition-calculator-tile',
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
                fontSize: 24 * TextScale,
              ),
            ),
          ),

          SizedBox(height: Size.height * 0.02),
          if (Platform.isWindows)
            Text(
              "This is A Windows System",
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontSize: 16 * TextScale,
                fontWeight: FontWeight.bold,
              ),
            ),
          if (Platform.isAndroid)
            Text(
              "This is An Android App",
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontSize: 16 * TextScale,
                fontWeight: FontWeight.bold,
              ),
            ),
          if (Platform.isIOS)
            Text(
              "This is An iOS App",
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontSize: 16 * TextScale,
                fontWeight: FontWeight.bold,
              ),
            ),
          if (Platform.isMacOS)
            Text(
              "This is A MacOS System",
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontSize: 16 * TextScale,
                fontWeight: FontWeight.bold,
              ),
            ),
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
                        .push<String>(
                          CupertinoPageRoute(
                            builder: (context) => FoodDetails(foodindex: index),
                          ),
                        )
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
