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
                          SizedBox(height: 20),
                          _searchField(),
                          SizedBox(height: 20),
                          Text('Favorite places', style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                          )),
                          SizedBox(height: 10),
                          Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.black
                                      ),
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    padding: EdgeInsets.all(5),
                                    height: 70,
                                    width: 70,
                                    child: Image(
                                      image: AssetImage(
                                        'assets/city.png'
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text('City', style:TextStyle(
                                    color:Colors.white
                                  ))
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.black
                                      ),
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    padding: EdgeInsets.all(5),
                                    height: 70,
                                    width: 70,
                                    child: Image(
                                      image: AssetImage(
                                        'assets/tours.png'
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text('Tours', style:TextStyle(
                                    color:Colors.white
                                  ))
                                ],
                              ),

                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.black
                                      ),
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    padding: EdgeInsets.all(5),
                                    height: 70,
                                    width: 70,
                                    child: Image(
                                      image: AssetImage(
                                        'assets/mountain-icon.png'
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text('Wonders', style:TextStyle(
                                    color:Colors.white
                                  ))
                                ],
                              ),

                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.black
                                      ),
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    padding: EdgeInsets.all(5),
                                    height: 70,
                                    width: 70,
                                    child: Image(
                                      image: AssetImage(
                                        'assets/beach.png'
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text('Beach', style:TextStyle(
                                    color:Colors.white
                                  ))
                                ],
                              ),
                            ],
                          )
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
  
  Widget _searchField(){
    return TextField(
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(5)
        ),
        filled: true,
        fillColor: Colors.grey[200],
        prefixIcon: Icon(Icons.search, color: Colors.grey),
        hintText: 'Search for your dream trip...',
        focusedBorder:OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2.0),
        ),
      ),
    );
  }


  
}