// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:zeus_dex/models/about_us_page.dart';
import 'package:zeus_dex/models/home_page.dart';
import 'package:zeus_dex/models/init.dart';
import 'package:zeus_dex/models/login_page.dart';
import 'package:zeus_dex/models/profile_page.dart';
import 'package:zeus_dex/models/profile_page/edit_profile_page.dart';
import 'package:zeus_dex/models/register_page.dart';
import 'package:zeus_dex/models/verification_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/profile",
      routes: {
        "": (context) => HomePage(), //might throw error
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/register": (context) => RegisterPage(),
        "/init": (context) => Firstpage1(),
        "/about": (context) => AboutUsPage(),
        "/verify": (context) => VerificationPage(),
        "/profile": (context) => ProfilePage(),
        "/edit": (context) => EditProfilePage(),
      },
    );
  }
}
