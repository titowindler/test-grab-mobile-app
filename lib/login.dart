import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyLoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => new _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      padding:
                          EdgeInsets.only(left: 30.0, right: 30.0, top: 60.0),
                      height: 500.0,
                      color: Color(0xFF32A060),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  padding:
                                      EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                                  //alignment: Alignment.topLeft,
                                  child: Image.asset(
                                      "assets/grab-logo-white.png",
                                      width: 100,
                                      height: 50,
                                      fit: BoxFit.contain),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                              //alignment: Alignment.centerLeft,
                              child: Text(
                                'Welcome!',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                              //alignment: Alignment.centerLeft,
                              child: Text(
                                'Enter your mobile number',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            SizedBox(height: 20.0),
                            TextField(
                              decoration: InputDecoration(
                                  labelText: 'Mobile Number',
                                  labelStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                              //obscureText: true,
                            ),
                            SizedBox(height: 40.0),
                            Container(
                              height: 40.0,
                              child: Material(
                                borderRadius: BorderRadius.circular(20.0),
                                shadowColor: Colors.blue,
                                color: Colors.blue,
                                elevation: 7.0,
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .pushNamed('/landing');
                                    },
                                    child: Center(
                                      child: Text(
                                        'CONTINUE',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Container(
                    height: 40.0,
                    color: Colors.transparent,
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.blue,
                                style: BorderStyle.solid,
                                width: 1.0),
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Image.asset('assets/facebook-logo.png',
                                    width: 40, height: 20),
                              ),
                              Center(
                                child: Text('FACEBOOK',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              )
                            ]))),
                SizedBox(height: 10.0),
                Container(
                    height: 40.0,
                    color: Colors.transparent,
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 1.0),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Image.asset('assets/google-logo.png',
                                    width: 40, height: 20),
                              ),
                              Center(
                                child: Text('GOOGLE',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue)),
                              )
                            ])))
              ],
            ),
          )),
    );
  }
}
