import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'quiz.dart';
import 'result.dart';

class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  final questions = const [
    {
      'questionText': 'The best place to stay for the night is...',
      'question_index': 1,
      'answers': [
        {'text': 'A nice, cosy, pod in a wall', 'score': 10},
        {'text': 'Camping in the mountains', 'score': 5},
        {'text': 'A tribal homestay', 'score': 3},
        {'text': 'A deserted beach', 'score': 1}
      ],
    },
    {
      'questionText': 'Pick a favourite mode of transport: ',
      'question_index': 2,
      'answers': [
        {'text': 'Bicycle', 'score': 3},
        {'text': 'Car', 'score': 11},
        {'text': 'Liveboard boat', 'score': 5},
        {'text': 'Walking', 'score': 9}
      ],
    },
    {
      'questionText': 'What makes for a great city to visit? ',
      'question_index': 3,
      'answers': [
        {'text': 'Hustle, bustle, and a crazy atmosphere', 'score': 3},
        {'text': 'Winding backstreets and hidden historical gems', 'score': 11},
        {'text': 'Bright lights and a futuristic mood', 'score': 5},
        {'text': 'I\'m going nowhere near any cities', 'score': 9}
      ],
    },
    {
      'questionText': 'True beauty is... ',
      'question_index': 4,
      'answers': [
        {'text': 'Idyllic waterfalls', 'score': 3},
        {'text': 'Ancient architecture', 'score': 11},
        {'text': 'Stunning mountain views', 'score': 5},
        {'text': 'Blue seas and uninhabited islands', 'score': 9}
      ],
    },
    {
      'questionText': 'What does \'exercise\' mean to you? ',
      'question_index': 5,
      'answers': [
        {'text': 'Long walks through jungles', 'score': 3},
        {'text': 'Sat on a water float, drink in hand', 'score': 11},
        {'text': 'Cycling through stunning natural scenery', 'score': 5},
        {'text': 'Discovering a city\'s hidden gems', 'score': 9}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [ 0.1, 0.4, 0.7, 0.9],
          colors: [
            HexColor("#ffa345"),
            HexColor("#f2ad73"),
            HexColor("#624185"),
            HexColor("#472151"),
          ],
        ),
        ),
    child: Scaffold(
    backgroundColor: Colors.transparent,
    body: _questionIndex < questions.length
    ? Quiz(
    questions: questions,
    questionIndex: _questionIndex,
    answerQuestion: _answerQuestion,
    )
            : Result(_totalScore, _resetQuiz),
    ),
    );
  }
}


