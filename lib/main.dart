import 'package:flutter/material.dart';
import 'package:ui_mountain/pages/landing.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: {
        '/' : (BuildContext context) => LandingScreen()
      },
    );
  }
}