import 'package:flutter/material.dart';
import 'package:sign_plus/login.dart';
import 'package:sign_plus/register.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFFFFB838),
                Color(0xFFFF7500),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 75.0, left: 75.0, top: 100.0),
                  child: Image.asset('assets/imgs/timer.png'),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 140.0,
                      height: 48.0,
                      child: RaisedButton(
                        // padding: EdgeInsets.only(left: 50.0, right: 50.0),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        textColor: Colors.black,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text('Login',
                            style: TextStyle(
                                fontFamily: 'Montserrat-Medium',
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    ButtonTheme(
                      minWidth: 140.0,
                      height: 48.0,
                      child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        textColor: Colors.black,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Register()));
                        },
                        child: Text(
                          'Register now',
                          style: TextStyle(
                              fontFamily: 'Montserrat-Medium',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text('Now! Quick Login Use Touch ID',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Montserrat-Medium')),
                Container(
                  margin: EdgeInsets.only(top: 40.0, bottom: 30.0),
                  child: Image.asset(
                    'assets/imgs/touch_id.png',
                    width: 80.0,
                  ),
                ),
                Text('Use Touch ID',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat-Medium',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
