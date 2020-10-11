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
            Positioned(
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 0.1,
                    sigmaY: 0.1
                  ),
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 320,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                    )
                  ),
                  padding: EdgeInsets.all(30),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text('Places', style: TextStyle(
                              fontSize: 20,
                                color: Colors.white
                              )),
                              Container(color: Colors.black,height: 2, width: 60)
                            ],
                          ),
                          SizedBox(width: 20),
                          Text('Hotels', style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                          )),
                          SizedBox(width: 20),
                            Text('Restaurants', style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                          )),
                        ],
                      ),
                      
                    ],
                  )
                ),
              ),
                ),
              )
            )
          ],
        )
      )
    );
  }

  
}