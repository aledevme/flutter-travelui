import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 80
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _headerApp()
            ],
          ),
        ),
      ),
    );
  }


  Widget _headerApp(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Text('Discover', style: TextStyle(
            fontSize: 30
          )),
        ),
        Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image(
                  height: 60,
                  width: 60,
                  image: AssetImage('assets/profile.png'),
                ),
              ),
              Positioned(
                left: 43,
                bottom: 43,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red,
                  ),
                  width: 17,
                  height: 17,
                  child: Text('2', style: TextStyle(
                    color: Colors.white
                  )),
                  alignment: Alignment.center,
                ),
              )
            ],
          ),
      ],
    );
  }
}