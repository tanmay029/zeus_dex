import 'package:flutter/material.dart';
import 'package:zeus_dex/models/profile_page/profile_widget.dart';
import 'package:zeus_dex/models/profile_page/textfield_widget.dart';
import 'package:zeus_dex/models/profile_page/user_preferences.dart';
import 'package:zeus_dex/models/profile_page/users.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 32,
          ),
          physics: BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: user.imagePath,
              isEdit: true,
              onClicked: () async {},
            ),
            SizedBox(
              height: 24,
            ),
            TextFieldWidget(
              label: 'Full Name',
              text: user.name,
              onChanged: (name) {},
            ),
            SizedBox(
              height: 24,
            ),
            TextFieldWidget(
              label: 'Email',
              text: user.email,
              onChanged: (email) {},
            ),
            SizedBox(
              height: 24,
            ),
            TextFieldWidget(
              label: 'Phone number',
              text: user.mobile,
              onChanged: (mobile) {},
            ),
            SizedBox(
              height: 24,
            ),
            TextFieldWidget(
              label: 'About',
              maxLines:5,
              text: user.about,
              onChanged: (about) {},
            ),
          ],
        ),
      );

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: BackButton(),
      backgroundColor: Colors.transparent,
      elevation: 0,
      // actions: [IconButton(onPressed: () {}, icon: icon)],
    );
  }
}
