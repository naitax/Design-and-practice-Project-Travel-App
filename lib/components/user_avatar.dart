import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/Screens/quiz/welcome.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final user = FirebaseAuth.instance.currentUser;

    return IconButton(
      icon: CircleAvatar(
        maxRadius: 25,
        backgroundImage: AssetImage("assets/images/qmark.png"),
        backgroundColor: Colors.transparent,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            //return LoginScreen();
            return WelcomeScreen();
          }),
        );
      }
    );
  }
}