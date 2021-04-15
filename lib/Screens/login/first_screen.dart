import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/Screens/login/provider/google_sign_in.dart';
import 'provider/widgets/background_painter.dart';
import 'provider/widgets/google_sign_in_button.dart';
import 'provider/widgets/login_widget.dart';


class FirstScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(), //detect changes
          builder: (context, snapshot) {
            final provider = Provider.of<GoogleSignInProvider>(context);
            if (provider.isSigningIn) {
              return buildLoading();
            } else if (snapshot.hasData) {
              return LoggedInWidget();
            } else {
              return SignUpWidget();
            }
          },
        ),
      ),
    );
  }
}
//loading indicator
Widget buildLoading() => Stack(
  fit: StackFit.expand,
  children: [
    CustomPaint(painter: BackgroundPainter()),
    Center(child: CircularProgressIndicator()),
  ],
);

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => buildSignUp();

  Widget buildSignUp() =>
      Column(
        children: [
          Spacer(),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: 175,
              child: Text(
                'Welcome Back To MyApp',
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
          Spacer(),
        ],
      );
}


/*
class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {


  Color _color = Colors.black;
  ContainerTransitionType _containerTransitionType = ContainerTransitionType
      .fade;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (contex) => GoogleSignInProvider(),
        child: Material(
          child:
                Center(
                  child: Stack(
                    children: [
                      _buildGrid(),
                      Container(
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(),
                            ),
                            AnimatedContainer(
                              duration: Duration(
                                seconds: 1,
                              ),
                              curve: Curves.fastOutSlowIn,
                              child: BlurryContainer(
                                height: 550,
                                bgColor: _color,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Welcome to ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 23,
                                              letterSpacing: 0.5),
                                        ),
                                        SizedBox(height: 10,),
                                        Text(
                                          'Explorer!',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 35,
                                              letterSpacing: 0.5),
                                        ),
                                        SizedBox(height: 40,),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Explore popular places of United Kingdom and \n'
                                                  'find nearby hotels and restaurants with the \neasiest way.'
                                                  ' Get real time directions, estimated\n cost and much more...',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w100,
                                                  height: 1.5,
                                                  fontSize: 15,
                                                  letterSpacing: 0.5),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 40,),
                                        Container(
                                            width: 350.0,
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: RaisedButton(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: new BorderRadius
                                                        .circular(30.0)),
                                                color: Color(0xffffffff),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Icon(FontAwesomeIcons.google,
                                                      color: Color(0xffCE107C),),
                                                    SizedBox(width: 10.0),
                                                    Text(
                                                      'Sign in with Google',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18.0),
                                                    ),
                                                  ],),
                                                onPressed: () {
                                                  final provider =
                                                  Provider.of<GoogleSignInProvider>(context, listen: false);
                                                  provider.login();
                                                },
                                              ),
                                            )
                                        ),

                                        SizedBox(height: 18,),

                                        Container(
                                            width: 350.0,
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: RaisedButton(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: new BorderRadius
                                                        .circular(30.0)),
                                                color: Color(0xffffffff),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Icon(FontAwesomeIcons.facebookF,
                                                      color: Color(0xff4754de),),
                                                    SizedBox(width: 10.0),
                                                    Text(
                                                      'Sign in with Facebook',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18.0),
                                                    ),
                                                  ],),
                                                onPressed: () {},
                                              ),
                                            )
                                        ),

                                        SizedBox(height: 18,),

                                        Container(
                                            width: 350.0,
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: RaisedButton(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: new BorderRadius
                                                        .circular(30.0)),
                                                color: Color(0xffffffff),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .spaceBetween,
                                                  children: <Widget>[
                                                    Icon(FontAwesomeIcons
                                                        .solidEnvelope,
                                                      color: Color(0xff4caf50),),
                                                    SizedBox(width: 10.0),
                                                    Text(
                                                      'Sign in with Email',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18.0),
                                                    ),
                                                  ],),
                                                onPressed: () {},
                                              ),
                                            )
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
                ),
        ),
      ),
    );
  }



/*
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

 */
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


 */