import 'package:flutter/material.dart';
import 'package:travel_app/Screens/home/main_screen.dart';
import 'package:travel_app/Screens/test_login/page/home_page.dart';
import 'package:travel_app/components/app_bar.dart';

import 'components/profile_pic.dart';
import 'profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context,
          title: 'Profile',),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            ProfilePic(),
            SizedBox(height: 20),
            ProfileMenu(
              text: "My Account",
              icon: "assets/icons/User Icon.svg",
              press: () => {},
            ),
            ProfileMenu(
              text: "Notifications",
              icon: "assets/icons/Bell.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Settings",
              icon: "assets/icons/Settings.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Help Center",
              icon: "assets/icons/Question mark.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Log Out",
              icon: "assets/icons/Log out.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    //return LoginScreen();
                    return HomePage();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );

  }
}
