import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        Container(
          width: 350,
          height: 50,
          child: ElevatedButton(
            child: Text(answerText,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16
            ),),
            onPressed: selectHandler,
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                side: BorderSide(color: Colors.purple)
              ),
            ),
          ),
        ),
        SizedBox(height: 5,)
      ],
    );
  }
}
