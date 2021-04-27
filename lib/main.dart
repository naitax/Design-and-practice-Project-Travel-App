import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/Screens/onboarding_screen.dart';
import 'package:travel_app/constants.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

import 'Screens/login/first_screen.dart';
import 'Screens/login/login_screen.dart';
import 'Screens/login/register_screen.dart';
import 'Screens/test_login/page/home_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      /*
       Scaffold(
          appBar: AppBar(
          title: Text(''),
          toolbarHeight: 5,
          backgroundColor: Colors.white,
          ),

       */

      OnboardingScreen(),
       );
  }
}
