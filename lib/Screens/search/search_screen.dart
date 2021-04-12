
import 'package:flutter/material.dart';
import 'package:travel_app/components/app_bar.dart';
import 'package:travel_app/components/bottom_nav_bar.dart';
import 'package:travel_app/components/hamburger_menu.dart';
import 'package:travel_app/components/user_avatar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: buildAppBar(context,
          title: 'Welcome to United Kingdom',
          leading: HamburgerMenu(),
          actions: [UserAvatar()]),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavBar(),
      body: Center(
        child: Text('Text')
      ),
    );
  }
}