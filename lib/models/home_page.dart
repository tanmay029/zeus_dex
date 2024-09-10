import 'package:flutter/material.dart';
import 'package:zeus_dex/Widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final int days = 30;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Catalog App ",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "/Users/tanmaykumar/Dev/zeus_dex/zeus_dex/lib/assets/images/abcd.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            child: Text(
              "Hello background",
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
