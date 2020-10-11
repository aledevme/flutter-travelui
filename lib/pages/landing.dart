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
        child: Stack(
          children: [
            Positioned(
              child: Container(
                padding: EdgeInsets.only(
                  left: 30
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 80),
                    Text('Do not miss the', style: TextStyle(
                      fontSize: 30
                    )),
                    Text('wonders of the world.', style: TextStyle(
                      fontSize: 30
                    )),
                    Text('Have fun and enjoy the landscape')
                  ],
                ),
              )
            ),
            
          ],
        )
      )
    );
  }

  
}