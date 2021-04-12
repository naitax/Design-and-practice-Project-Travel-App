import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/Screens/home/home.dart';
import 'package:travel_app/constants.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

import 'Screens/login/first_screen.dart';

void main() {
  debugPaintSizeEnabled = false; // Set to true for visual layout
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  static final showGrid = true; // Set to false to show ListView
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme:
            GoogleFonts.merriweatherTextTheme(Theme.of(context).textTheme),
      ),
      home: //// HomeScreen(),
       Scaffold(
          appBar: AppBar(
          title: Text(''),
          toolbarHeight: 5,
          backgroundColor: Colors.white,
          ),
    body: FirstScreen(),
       ),
    );
  }
}
