import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                      Text('Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w500
                      ),),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Username',
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
                            Icons.account_circle,
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
                        height: 25,
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
                        height: 25,
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
                        height: 40,
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
                              },
                              color: HexColor('#F5B102'),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Center(
                                child: Text(
                                  'Sign up',
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
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              height: 1,
                              width:70,
                              color: HexColor('#F5B102'),
                            ),
                          ),
                          Text('I already have an account',
                            style: TextStyle(
                                color: Colors.white,
                              fontSize: 16
                            ),),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              height: 1,
                              width: 70,
                              color: HexColor('#F5B102'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      ButtonTheme(
                        height: 55,
                        minWidth: 180,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.white,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                SizedBox(
                                    height:30,
                                    width: 30,
                                    child: Image.asset('images/google_icon.png')),
                                SizedBox(width: 70,),
                                Text(
                                  'Sign up with Google',
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
                                  'Sign up with Facebook',
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
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }

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
