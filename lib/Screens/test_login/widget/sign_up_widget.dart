
import 'package:flutter/material.dart';
import 'package:travel_app/Screens/test_login/widget/background_painter.dart';
import 'package:travel_app/Screens/test_login/widget/google_signup_button_widget.dart';

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(painter: BackgroundPainter()),
          buildSignUp(),
        ],
      );

  Widget buildSignUp() => Column(
        children: [
          Spacer(),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: 200,
              child: Text(
                'Sign in to begin an amazing journey!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Spacer(),
          GoogleSignupButtonWidget(),
          SizedBox(height: 12),
          Text(
            'Login to continue',
            style: TextStyle(fontSize: 16),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 240.0),
            child: Container(
              width: 100,
              child: FloatingActionButton(
                backgroundColor: Colors.purple,
              onPressed: () {

              },
                child: Text('Skip',
                style: TextStyle(),),
              ),
            ),
          ),
          Spacer(),
        ],
      );
}
