// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:food_d/pages/favorites_page.dart';
// import 'package:food_d/pages/home_page.dart';
// import 'package:food_d/pages/profile_page.dart';

// class ButtomNavPage extends StatefulWidget {
//   const ButtomNavPage({super.key});

//   @override
//   State<ButtomNavPage> createState() => _ButtomNavPageState();
// }

// List<Widget> pages = const [HomePage(), FavoritesPage(), ProfilePage()];

// // ignore: constant_identifier_names
// int SelectedIndex = 0;

// class _ButtomNavPageState extends State<ButtomNavPage> {
//   @override
//   Widget build(BuildContext context) {
//     final PreferredSizeWidget? appbar;
//     Widget? buttomnavbar;
//     // final pageScaffold;
//     if (Platform.isAndroid) {
//       appbar = AppBar(
//         centerTitle: true,
//         title: Text(
//           'Foodak - Food Delivery App',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//       );
//       buttomnavbar = BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: 'Favorites',
//           ),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//         ],
//         selectedItemColor: Theme.of(context).primaryColor,
//         currentIndex: SelectedIndex,
//         onTap: (index) {
//           setState(() {
//             SelectedIndex = index;
//           });
//         },
//       );
//     } else if (Platform.isIOS) {
//       appbar = CupertinoNavigationBar(
//         middle: Text(
//           'Foodak - Food Delivery App',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//       );
//       buttomnavbar = CupertinoTabBar(
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: 'Favorites',
//           ),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//         ],
//         inactiveColor: Theme.of(context).primaryColor,
//         currentIndex: SelectedIndex,
//         onTap: (index) {
//           setState(() {
//             SelectedIndex = index;
//           });
//         },
//       );
//     } else if (Platform.isWindows) {
//       appbar = AppBar(
//         centerTitle: true,
//         title: Text(
//           'Foodak - Food Delivery App',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//       );
//     } else {
//       appbar = AppBar(
//         centerTitle: true,
//         title: Text(
//           'Foodak - Food Delivery App',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//       );
//     }

//     final TextScale = MediaQuery.of(context).textScaleFactor;
//     return Scaffold(
//       drawer: Drawer(child: Center(child: Text("I am in the drawer"))),
//       appBar: appbar,

//       body: Center(child: pages[SelectedIndex]),
//       bottomNavigationBar: buttomnavbar,
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:food_d/pages/favorites_page.dart';
import 'package:food_d/pages/home_page.dart';
import 'package:food_d/pages/profile_page.dart';

class ButtomNavPage extends StatefulWidget {
  const ButtomNavPage({super.key});

  @override
  State<ButtomNavPage> createState() => _ButtomNavPageState();
}

class _ButtomNavPageState extends State<ButtomNavPage> {
  int selectedIndex = 0;

  final List<Widget> pages = const [HomePage(), FavoritesPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(child: Center(child: Text("I am in the drawer"))),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Foodak - Food Delivery App',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: pages[selectedIndex],
      ), // اللي هيظهر عندي هيكون ف ال body
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
