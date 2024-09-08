// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last
// import 'package:velocity_x/velocity_x.dart';

import 'package:flutter/material.dart';
import 'package:zeus_dex/utils/routes.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 68, 202, 255),
          title: Text("About Us"),
          automaticallyImplyLeading: false,
        ),
        // body: Text(
        //   "Adipisicing aliqua adipisicing veniam veniam consectetur incididunt non culpa minim. Nulla magna cillum ea reprehenderit laborum nisi laborum non qui commodo laboris. Veniam esse velit aliquip occaecat eiusmod quis adipisicing consectetur veniam. Pariatur veniam amet id officia nulla aute sint cupidatat duis laboris aliqua consequat sit. Nostrud laboris eiusmod irure ut qui fugiat aliquip dolore id culpa velit.",
        // ),
        body: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Adipisicing aliqua adipisicing veniam veniam consectetur incididunt non culpa minim. Nulla magna cillum ea reprehenderit laborum nisi laborum non qui commodo laboris. Veniam esse velit aliquip occaecat eiusmod quis adipisicing consectetur veniam. Pariatur veniam amet id officia nulla aute sint cupidatat duis laboris aliqua consequat sit. Nostrud laboris eiusmod irure ut qui fugiat aliquip dolore id culpa velit.",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              // color: Colors.blueAccent,
              width: 400,
              child: Center(
                child: Text(
                  "Sounds good? \nSo you wanna join ?\nClick the button below",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () async {
                await Navigator.pushNamed(context, MyRoutes.initialRoute);
              },
              child: Container(
                height: 50,
                width: 350,
                alignment: Alignment.center,
                child: Text(
                  "Click for lightning fast speed",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
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


















//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           // Container(
//           //   color: Colors.white,
//           // ),
//           Text(
//             "Adipisicing aliqua adipisicing veniam veniam consectetur incididunt non culpa minim. Nulla magna cillum ea reprehenderit laborum nisi laborum non qui commodo laboris. Veniam esse velit aliquip occaecat eiusmod quis adipisicing consectetur veniam. Pariatur veniam amet id officia nulla aute sint cupidatat duis laboris aliqua consequat sit. Nostrud laboris eiusmod irure ut qui fugiat aliquip dolore id culpa velit.",
//           ),
//           SizedBox(
//             height: 30,
//           ),
//           Text("data")
//           // .text
//           // .bold
//           // .xl
//           // .textStyle(context.captionStyle)
//           // .make()
//           // .p8(),
//           // RichText(
//           //   text: TextSpan(
//           //     text:
//           //         "Adipisicing aliqua adipisicing veniam veniam consectetur incididunt non culpa minim. Nulla magna cillum ea reprehenderit laborum nisi laborum non qui commodo laboris. Veniam esse velit aliquip occaecat eiusmod quis adipisicing consectetur veniam. Pariatur veniam amet id officia nulla aute sint cupidatat duis laboris aliqua consequat sit. Nostrud laboris eiusmod irure ut qui fugiat aliquip dolore id culpa velit.",
//           //     style: TextStyle(color: Colors.black, fontSize: 18.0),

//           //   ),
//           // )
//         ],
//       ),
//       appBar: AppBar(
//         backgroundColor: Colors.blueAccent,
//         title: Text(
//           "About Us",
//           style: TextStyle(
//             fontSize: 30,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         automaticallyImplyLeading: false,
//       ),
//     );
//   }
// }
