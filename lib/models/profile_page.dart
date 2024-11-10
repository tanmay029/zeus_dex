import 'package:flutter/material.dart';
import 'package:zeus_dex/models/profile_page/Button_widget.dart';
import 'package:zeus_dex/models/profile_page/edit_profile_page.dart';
import 'package:zeus_dex/models/profile_page/profile_widget.dart';
import 'package:zeus_dex/models/profile_page/user_preferences.dart';
import 'package:zeus_dex/models/profile_page/users.dart';
// import 'package:zeus_dex/utils/routes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => EditProfilePage(),
                ),
              );
            },
            // onClicked: () async {
            //   await Navigator.pushNamed(context, MyRoutes.editRoute);
            // },
          ),
          SizedBox(height: 24),
          buildname(user),
          SizedBox(height: 24),
          Center(
            child: buildUpgradeButton(),
          ),
          SizedBox(
            height: 36,
          ),
          buildAbout(user),
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: BackButton(),
      backgroundColor: Colors.transparent,
      elevation: 0,
      // actions: [IconButton(onPressed: () {}, icon: icon)],
    );
  }

  Widget buildname(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
          Text(
            user.mobile,
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
        ],
      );
  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Upgrade To Pro',
        onClicked: () {},
      );
  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              user.about,
              style: TextStyle(
                fontSize: 16,
                height: 1.4,
              ),
            ),
          ],
        ),
      );
}
