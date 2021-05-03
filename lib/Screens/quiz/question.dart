import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;


  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: Text(
              questionText,
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.w400
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      Divider(
        color: Colors.white,
        thickness: 0.5,
        indent: 20,
        endIndent: 20,
      ),
      ],
    );
  }
}
