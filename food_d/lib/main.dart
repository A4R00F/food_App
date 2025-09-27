import 'package:flutter/material.dart';
import 'package:food_d/pages/buttom_nav_page.dart';
import 'package:food_d/pages/food_details.dart';
// import 'package:food_d/pages/home_page.dart';

// ignore: camel_case_types
class foodapp extends StatelessWidget {
  const foodapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        // primaryColor: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.grey[200],
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        dividerTheme: const DividerThemeData(
          thickness: 2,
          indent: 2,
          endIndent: 2,
        ),
        // listTileTheme: const ListTileThemeData(iconColor: Colors.deepOrange),
        fontFamily: 'OpenSans',
      ),
      debugShowCheckedModeBanner: false,
      // home: BottomNavPage(), استبدلناه بال routes
      routes: {
        '/': (context) => const BottomNavPage(),
        '/food-details': (context) => FoodDetails(),
      },
    );
  }
}

void main() {
  runApp(const foodapp());
}
