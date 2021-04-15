import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:travel_app/Screens/home/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/Screens/home/main_screen.dart';
import 'package:travel_app/Screens/login/provider/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Color _color = Colors.black;
  bool _isHidden = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Stack(children: [
          _buildGrid(),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Container(),
                ),
                BlurryContainer(
                  height: 700,
                  bgColor: _color,
                  child: Column(
                    children: [
                    Text(
                    'Welcome back!',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 35,
                        letterSpacing: 0.5),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Email',
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide:
                        BorderSide(width: 1, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide:
                        BorderSide(width: 1, color: Colors.orange),
                      ),
                      suffixIcon: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                    ),
                    validator: (val) {
                      if (val.length == 0) {
                        return 'Email cannot be empty';
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Password',
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide:
                        BorderSide(width: 1, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(
                          width: 1,
                          color: HexColor('#F5B102'),
                        ),
                      ),
                      suffixIcon: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(
                          _isHidden
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Forgot password?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        letterSpacing: 0.5),
                  ),
                  Divider(
                    indent: 100,
                    endIndent: 100,
                    color: HexColor('#F5B102'),
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonTheme(
                        height: 55,
                        minWidth: 180,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          color: HexColor('#F5B102'),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Center(
                            child: Text(
                              'Back',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      ButtonTheme(
                        height: 55,
                        minWidth: 180,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return MainScreen();
                              }),
                            );
                          },
                          color: HexColor('#F5B102'),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Center(
                            child: Text(
                              'Log in',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 1,
                          width: 160,
                          color: HexColor('#F5B102'),
                        ),
                      ),
                      Text('Or',
                        style: TextStyle(
                            color: Colors.white
                        ),),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 1,
                          width: 160,
                          color: HexColor('#F5B102'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  ButtonTheme(
                    height: 55,
                    minWidth: 180,
                    child: RaisedButton(
                      onPressed: () {
                        final provider =
                            Provider.of<GoogleSignInProvider>(context, listen: false);
                            provider.login();
                      },
                      color: Colors.white,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: Container(
                          child: Row(
                            children: [
                              SizedBox(width: 70,),
                              Text(
                                'Sign in with Google',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                    SizedBox(height: 20,),
                    ButtonTheme(
                      height: 55,
                      minWidth: 180,
                      child: RaisedButton(
                        elevation: 3,
                        onPressed: () {},
                        color: HexColor('#4267B2'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              /*
                                SizedBox(
                                    height:50,
                                    width: 50,
                                    child: Image.asset('images/fb_logo.png')),

                                 */
                              Text(
                                'Sign in with Facebook',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 60,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 1,
                            width: 80,
                            color: HexColor('#F5B102'),
                          ),
                        ),
                        Text('I don\'t have an account',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 1,
                            width: 80,
                            color: HexColor('#F5B102'),
                          ),
                        ),
                      ],
                    ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
/*
    Widget buildLoading() => Stack(
      fit: StackFit.expand,
      children: [
        CustomPaint(painter: BackgroundPainter()),
        Center(child: CircularProgressIndicator()),
      ],
    );

 */
  }

  // #docregion grid
  Widget _buildGrid() =>
      GridView.extent(
          maxCrossAxisExtent: 150,
          padding: const EdgeInsets.all(4),
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: _buildGridTileList(30));

  // The images are saved with names pic0.jpg, pic1.jpg...pic29.jpg.
  // The List.generate() constructor allows an easy way to create
  // a list when objects have a predictable naming pattern.
  List<Container> _buildGridTileList(int count) =>
      List.generate(
          count, (i) =>
          Container(child: Image.asset('assets/images/images/pic$i.jpg')));
}

class UserDetails {
  final String providerDetails;
  final String userName;
  final String photoUrl;
  final String userEmail;
  final List<ProviderDetails> providerData;

  UserDetails(this.providerDetails,this.userName, this.photoUrl,this.userEmail, this.providerData);
}


class ProviderDetails {
  ProviderDetails(this.providerDetails);
  final String providerDetails;
}