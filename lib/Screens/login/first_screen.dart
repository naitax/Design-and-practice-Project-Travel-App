import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:animations/animations.dart';
import 'login_screen.dart';
import 'register_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  int _counter = 0;
  int _cnt = 1;
  double _height = 210;
  Color _color = Colors.black;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _incrementCounter2() {
    setState(() {
      _cnt++;
    });
  }

  ContainerTransitionType _containerTransitionType = ContainerTransitionType.fade;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          _buildGrid(),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Container(),
                ),
                if (_counter%2!=0) AnimatedContainer(
                  duration: Duration(
                    seconds: 1,
                  ),
                  curve: Curves.fastOutSlowIn,
                  child: BlurryContainer(
                    height: _height,
                    bgColor: _color,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 350),
                              child: IconButton(
                                icon: Icon(
                                  Icons.close,
                                  size: 35,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _incrementCounter();
                                    if (_counter%2!=0){
                                      _height = 410;
                                    }
                                    else if (_counter%2==0)
                                    {
                                      _height = 210;
                                    }
                                  }
                                  );
                                },
                              ),
                            ),
                            Text(
                              'Begin your journey!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 35,
                                  letterSpacing: 0.5),
                            ),
                            SizedBox(height: 50,),
                            OpenContainer(
                              transitionType: _containerTransitionType,
                              transitionDuration: Duration(seconds: 1),
                              openBuilder: (context, _) => LoginScreen(),
                              closedElevation: 0,
                              closedShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              closedColor: Colors.orange,
                              closedBuilder: (context, _) =>
                              Container(
                                height: 55,
                                width: 220,
                                color: HexColor('#F5B102'),
                                    child: Center(
                                      child: Text('Log in ', style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20
                                      ),),
                                    ),
                                  ),
                                ),
                            SizedBox(height: 18,),
                            OpenContainer(
                              transitionType: _containerTransitionType,
                              transitionDuration: Duration(seconds: 1),
                              openBuilder: (context, _) => RegisterScreen(),
                              closedElevation: 0,
                              closedShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              closedColor: Colors.white,
                              closedBuilder: (context, _) =>
                                  Container(
                                    height: 55,
                                    width: 220,
                                    color: Colors.white,
                                    child: Center(
                                      child: Text('Sign up ', style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20
                                      ),),
                                    ),
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
                else if ((_counter%2==0) && (_cnt>0)) AnimatedContainer(
                  duration: Duration(
                    seconds: 1,
                  ),
                  curve: Curves.fastOutSlowIn,
                  child: BlurryContainer(
                    height: _height,
                    bgColor: _color,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                'Welcome',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 40,
                                    letterSpacing: 0.5),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              'Select your next travel destination',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                            SizedBox(height: 18,),
                            ButtonTheme(
                              height: 55,
                              minWidth: 220,
                              child: RaisedButton(
                                onPressed:
                                    () {
                                  setState(() {
                                    _incrementCounter();
                                    if (_counter%2!=0){
                                      _height = 360;
                                    }
                                    else if (_counter%2==0)
                                    {
                                      _height = 210;
                                    }
                                  });
                                },
                                color: HexColor('#F5B102'),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Text('Get started', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20
                                ),),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _getStarted() => AnimatedContainer(
    duration: Duration(
      seconds: 1,
    ),
    curve: Curves.fastOutSlowIn,
    child: BlurryContainer(
      height: _height,
      bgColor: _color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 40,
                      letterSpacing: 0.5),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                'Select your next travel destination',
                style: TextStyle(
                    color: Colors.white
                ),
              ),
              SizedBox(height: 18,),
              ButtonTheme(
                height: 55,
                minWidth: 220,
                child: RaisedButton(
                  onPressed:
                      () {
                    setState(() {
                      _incrementCounter();
                      if (_counter%2!=0){
                        _height = 360;
                      }
                      else if (_counter%2==0)
                      {
                        _height = 210;
                      }
                    });
                  },
                  color: HexColor('#F5B102'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text('Get started', style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 20
                  ),),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
  // #docregion grid
  Widget _buildGrid() => GridView.extent(
      maxCrossAxisExtent: 150,
      padding: const EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildGridTileList(30));

  // The images are saved with names pic0.jpg, pic1.jpg...pic29.jpg.
  // The List.generate() constructor allows an easy way to create
  // a list when objects have a predictable naming pattern.
  List<Container> _buildGridTileList(int count) => List.generate(
      count, (i) => Container(child: Image.asset('assets/images/images/pic$i.jpg')));
}
