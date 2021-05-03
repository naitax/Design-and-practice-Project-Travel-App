import 'package:flutter/material.dart';
import 'package:travel_app/Screens/home/main_screen.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'China';
    if (resultScore <= 8)
      resultText = 'Norway';
    else if (resultScore <= 12)
      resultText = 'Italy';
    else if (resultScore <= 16)
      resultText = 'Japan';
    else
      resultText = 'England';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('You should visit next... \n ',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w600,

          ),),
          SizedBox(height: 20,),
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 46,
              fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
            ),
          ),
          SizedBox(height: 50,),
          Container(
            width: 350,
            height: 50,
            child: ElevatedButton(
              child: Text('Restart Quiz',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),),
              onPressed: resetHandler,
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.orange)
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            width: 350,
            height: 50,
            child: ElevatedButton(
              child: Text('Next',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    //return LoginScreen();
                    return MainScreen();
                  }),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.orange)
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
