import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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

      ),
      onPressed: () {}
    );
  }
}