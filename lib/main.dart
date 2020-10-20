import 'package:flutter/material.dart';
import 'landing.dart';
import 'activity.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          //   '/profile': (BuildContext context) => new MyProfilePage(),
          '/activity': (BuildContext context) => new MyActivityPage(),
          '/login': (BuildContext context) => new MyLoginPage(),
          '/landing': (BuildContext context) => new MyLandingPage()
        },
        home: MyLoginPage());
  }
}
