import 'dart:io';
// import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  // ignore: non_constant_identifier_names
  Widget Information(
    BuildContext context, {
    required String title,
    required String value,
  }) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.bold,
    
            fontSize: 16,
          ),
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
            fontSize: 20,
          ),
        ),
      ],
    );
  }

  Widget itemTapped(
    BuildContext context, {
    required String title,
    String? subtitle,
    required IconData icon,
  }) {
    return Platform.isAndroid || Platform.isWindows || Platform.isLinux || Platform.isMacOS
        ? ListTile(
            onTap: () {
              debugPrint('Tapped on $title');
            },
            title: Text(
              title,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: subtitle != null
                ? Text(
                    subtitle,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  )
                : null,
            leading: Icon(icon),
            trailing: Icon(CupertinoIcons.chevron_right),
          )
        : Platform.isIOS
        ? CupertinoListTile(
            onTap: () {
              debugPrint('Tapped on $title');
            },
            title: Text(
              title,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: subtitle != null
                ? Text(
                    subtitle,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  )
                : null,
          )
        : Container();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: size.height * 0.25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/ashraf.jpg'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Text(
            "Asharf Nagy Mohamed",
            style: Theme.of(
              context,
            ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Information(context, title: "Orders", value: "100"),
              Information(context, title: "Vouchers", value: "10"),
            ],
          ),
          Divider(),
          itemTapped(
            context,
            title: 'Order',
            subtitle: 'This Is The Number Of Orders',
            icon: Icons.shopping_cart,
          ),
          Divider(),
          itemTapped(
            context,
            title: 'Available Vouchers',
            subtitle: 'This Is The Number Of Vouchers',
            icon: Icons.card_giftcard,
          ),
          Divider(),
        ],
      ),
    );
  }
}  
// import 'dart:io';
// import 'dart:ui';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});

//   // ignore: non_constant_identifier_names
//   Widget Information(
//     BuildContext context, {
//     required String title,
//     required String value,
//   }) {
//     return Column(
//       children: [
//         Text(
//           title,
//           style: Theme.of(context).textTheme.titleMedium!.copyWith(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//               ),
//         ),
//         Text(
//           value,
//           style: Theme.of(context).textTheme.titleLarge!.copyWith(
//                 fontWeight: FontWeight.bold,
//                 color: Theme.of(context).primaryColor,
//                 fontSize: 20,
//               ),
//         ),
//       ],
//     );
//   }

//   Widget itemTapped(
//     BuildContext context, {
//     required String Title,
//     String? subtitle,
//     required IconData icon,
//   }) {
//     return Platform.isAndroid || Platform.isWindows || Platform.isLinux || Platform.isMacOS
//         ? ListTile(
//             onTap: () {
//               debugPrint('Tapped on $Title');
//             },
//             title: Text(
//               Title,
//               style: Theme.of(context).textTheme.titleLarge!.copyWith(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18,
//                   ),
//             ),
//             subtitle: subtitle != null
//                 ? Text(
//                     subtitle,
//                     style: Theme.of(context).textTheme.titleSmall!.copyWith(
//                           color: Colors.grey,
//                           fontSize: 16,
//                         ),
//                   )
//                 : null,
//             leading: Icon(icon),
//             trailing: const Icon(CupertinoIcons.chevron_right),
//           )
//         : Platform.isIOS
//             ? CupertinoListTile(
//                 onTap: () {
//                   debugPrint('Tapped on $Title');
//                 },
//                 title: Text(
//                   Title,
//                   style: Theme.of(context).textTheme.titleLarge!.copyWith(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       ),
//                 ),
//                 subtitle: subtitle != null
//                     ? Text(
//                         subtitle,
//                         style: Theme.of(context).textTheme.titleSmall!.copyWith(
//                               color: Colors.grey,
//                               fontSize: 16,
//                             ),
//                       )
//                     : null,
//               )
//             : Container();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;

//     Widget profileBody = Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             height: size.height * 0.25,
//             decoration: const BoxDecoration(
//               shape: BoxShape.circle,
//               image: DecorationImage(
//                 image: AssetImage('assets/images/ashraf.jpg'),
//                 fit: BoxFit.contain,
//               ),
//             ),
//           ),
//         ),
//         Text(
//           "Asharf Nagy Mohamed",
//           style: Theme.of(context).textTheme.titleLarge!.copyWith(
//                 fontWeight: FontWeight.bold,
//               ),
//         ),
//         SizedBox(height: size.height * 0.02),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Information(context, title: "Orders", value: "100"),
//             Information(context, title: "Vouchers", value: "10"),
//           ],
//         ),
//         const Divider(),
//         itemTapped(
//           context,
//           Title: 'Order',
//           subtitle: 'This Is The Number Of Orders',
//           icon: Icons.shopping_cart,
//         ),
//         const Divider(),
//         itemTapped(
//           context,
//           Title: 'Available Vouchers',
//           subtitle: 'This Is The Number Of Vouchers',
//           icon: Icons.card_giftcard,
//         ),
//         const Divider(),
//       ],
//     );

//     return Platform.isAndroid || Platform.isWindows || Platform.isLinux || Platform.isMacOS
//         ? SingleChildScrollView(child: profileBody)
//         : Platform.isIOS
//             ? profileBody
//             : Container();
//   }
// }
