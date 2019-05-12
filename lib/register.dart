import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegisterSate();
}

class _RegisterSate extends State<Register> {
  bool _isFieledObsecure;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isFieledObsecure = true;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          // appBar: AppBar(
          //   // title: Text(
          //   //   'Back',
          //   //   style: TextStyle(color: Colors.black, fontSize: 15.0),
          //   // ),
          //   leading: IconButton(
          //     icon: Icon(Icons.arrow_back_ios),
          //     onPressed: () => Navigator.pop(context, false),
          //   ),
          //   backgroundColor: Colors.transparent,
          //   elevation: 0.0,
          //   iconTheme: IconThemeData(color: Colors.black),
          // ),
          backgroundColor: Color(0xFFF7F7FB),
          body: Stack(
            children: <Widget>[
              Align(
                  alignment: Alignment.topRight,
                  child: Image.asset('assets/imgs/shape.png')),
              _loadBody()
            ],
          ),
        )
      ],
    );
  }

  _loadBody() {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Container(
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  Text(
                    'Back',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 30.0),
                  child: Image.asset(
                    'assets/imgs/logo.png',
                    height: 150.0,
                  )),
              Center(
                child: Card(
                  elevation: 0.8,
                  color: Colors.white,
                  margin: EdgeInsets.only(
                      top: 30.0, right: 30.0, left: 30.0, bottom: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        'Create account',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF3D465A),
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25.0, right: 25.0),
                        child: Stack(
                          children: <Widget>[
                            TextField(
                              decoration: new InputDecoration(
                                labelText: "User name*",
                                contentPadding:
                                    EdgeInsets.only(right: 25.0, bottom: 10.0),
                                labelStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.only(top: 10.0),
                              child: Icon(
                                Icons.person,
                                color: Color(0xFFFF7A15),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25.0, right: 25.0),
                        child: Stack(
                          children: <Widget>[
                            TextField(
                              decoration: new InputDecoration(
                                labelText: "Email ID",
                                contentPadding:
                                    EdgeInsets.only(right: 25.0, bottom: 10.0),
                                labelStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.only(top: 10.0),
                              child: Icon(
                                Icons.email,
                                color: Color(0xFFFF7A15),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25.0, right: 25.0),
                        child: Stack(
                          children: <Widget>[
                            TextField(
                              obscureText: _isFieledObsecure,
                              decoration: new InputDecoration(
                                labelText: "Password",
                                contentPadding:
                                    EdgeInsets.only(right: 25.0, bottom: 10.0),
                                labelStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                padding: EdgeInsets.only(left: 20.0),
                                icon: Icon(
                                  _isFieledObsecure
                                      ? Icons.enhanced_encryption
                                      : Icons.no_encryption,
                                  color: Color(0xFFFF7A15),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isFieledObsecure =
                                        _isFieledObsecure ? false : true;
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: Checkbox(
                            value: true,
                            onChanged: (newValue) {},
                          ),
                        ),
                        Text(
                          'I Read and agree to',
                          style:
                              TextStyle(color: Colors.black45, fontSize: 12.0),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.0),
                          child: Text('Term & Conditions',
                              style: TextStyle(
                                  fontFamily: 'Montserrat-Medium',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFF7A15),
                                  fontSize: 12.0,
                                  decoration: TextDecoration.underline)),
                        ),
                      ]),
                      SizedBox(
                        height: 40.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: 200.0,
                            height: 48.0,
                            child: RaisedButton(
                              color: Color(0xFFFF7A15),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0)),
                              textColor: Colors.white,
                              onPressed: () {},
                              child: Text(
                                'Register Now',
                                style: TextStyle(
                                    fontFamily: 'Montserrat-Medium',
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Or Register using social media',
                          style: TextStyle(
                              fontFamily: 'Montserrat-Medium',
                              fontWeight: FontWeight.w900,
                              fontSize: 15.0),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('assets/imgs/fb.png'),
                          SizedBox(
                            width: 50.0,
                          ),
                          Image.asset('assets/imgs/twitter.png')
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Already have an acount? ',
                    style: TextStyle(
                        fontFamily: 'Montserrat-Medium',
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                        fontFamily: 'Montserrat-Medium',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFF7A15),
                        fontSize: 15.0,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
              SizedBox(
                height: 35.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
