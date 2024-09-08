import 'package:flutter/material.dart';
import 'package:zeus_dex/Widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final int days = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome To $days of Flutter"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
