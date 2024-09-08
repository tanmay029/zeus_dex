// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:zeus_dex/utils/routes.dart';

class Firstpage1 extends StatefulWidget {
  const Firstpage1({super.key});

  @override
  State<Firstpage1> createState() => _Firstpage1State();
}

class _Firstpage1State extends State<Firstpage1> {
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Zeus Dex",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              "https://cdn.pixabay.com/photo/2022/12/28/18/02/zeus-7683518_1280.jpg",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () async {
                await Navigator.pushNamed(context, MyRoutes.registerRoute);
              },
              child: Container(
                height: 50,
                width: 250,
                alignment: Alignment.center,
                child: Text(
                  "Register",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            InkWell(
              onTap: () async {
                await Navigator.pushNamed(context, MyRoutes.loginRoute);
              },
              child: Container(
                width: 250,
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                ),
              ),
            ),
            SizedBox(height: 90.0),
            InkWell(
              onTap: () async {
                await Navigator.pushNamed(context, MyRoutes.aboutRoute);
              },
              child: Container(
                width: 320,
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  "Wanna know about us ?",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 217, 105),
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
