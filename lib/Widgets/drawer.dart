// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:zeus_dex/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const imageurl =
        "https://static.wikia.nocookie.net/maxpayne/images/c/cb/Max_Payne_mugshot_MP3.jpg/revision/latest?cb=20221229102316";
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 66, 86, 96),
      child: Container(
        color: Colors.blueGrey,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Maxp0290"),
                accountEmail: Text("Maxp0290@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () async {
                await Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () async {
                await Navigator.pushNamed(context, MyRoutes.profileRoute);
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.arrow_right_arrow_left,
                color: Colors.white,
              ),
              title: Text(
                "Transactions",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () async {
                await Navigator.pushNamed(context, MyRoutes.initialRoute);
              },
            ),
            // ListTile(
            //   leading: Icon(
            //     CupertinoIcons.bitcoin_circle,
            //     color: Colors.white,
            //   ),
            //   title: Text(
            //     "Previous Trades",
            //     textScaleFactor: 1.2,
            //     style: TextStyle(
            //       color: Colors.white,
            //     ),
            //   ),
            //   onTap: () async {
            //     await Navigator.pushNamed(context, MyRoutes.initialRoute);
            //   },
            // ),
            ListTile(
              leading: Icon(
                CupertinoIcons.bandage,
                color: Colors.white,
              ),
              title: Text(
                "Help/FAQ",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () async {
                await Navigator.pushNamed(context, MyRoutes.initialRoute);
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.arrow_up_left_circle_fill,
                color: Colors.white,
              ),
              title: Text(
                "Logout",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () async {
                await Navigator.pushNamed(context, MyRoutes.initialRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
