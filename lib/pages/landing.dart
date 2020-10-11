import 'dart:ui';

import 'package:flutter/material.dart';
class LandingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/cover.jpg')
          )
        ),
        child: Container()
      )
    );
  }

  
}