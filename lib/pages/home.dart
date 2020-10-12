import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
               padding: EdgeInsets.only(
                 top: 70,
                 left: 20,
                 right: 20,
                 bottom: 20
               ),
               color: Colors.grey[200],
               child: Column(
                 children: [
                    _headerApp(),
                    _options(),
                    SizedBox(height: 20),
                    _searchField(),
                 ],
               ),
             ),
              _menuPlaces()
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
            fontSize: 40,
            fontWeight: FontWeight.w500,
          )),
        ),
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image(
                height: 50,
                width: 50,
                image: AssetImage('assets/profile.png'),
              ),
            ),
            Positioned(
              left: 33,
              bottom: 33,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.red,
                ),
                width: 17,
                height: 17,
                child: Text('2', style: TextStyle(
                  color: Colors.white, 
                )),
                alignment: Alignment.center,
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _options(){
    return Row(
      children: [
        Column(
          children: [
            Text('Places', style: TextStyle(
            fontSize: 20,
              color: Colors.black
            )),
            SizedBox(height: 5),
            Container(color: Colors.black,height: 2, width: 60)
          ],
        ),
        SizedBox(width: 20),
        Text('Hotels', style: TextStyle(
          fontSize: 20,
          color: Colors.black
        )),
        SizedBox(width: 20),
          Text('Restaurants', style: TextStyle(
          fontSize: 20,
          color: Colors.black
        )),
      ],
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
        fillColor: Colors.white,
        prefixIcon: Icon(Icons.search, color: Colors.grey),
        hintText: 'Search for your dream trip...',
        focusedBorder:OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2.0),
        ),
      ),
    );
  }

  Widget _menuPlaces(){
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Text('Results'),
                SizedBox(width: 5),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 2
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[300],
                  ),
                  child: Text('128'),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Text('Views'),
                SizedBox(width: 5),
                Icon(Icons.dashboard, color: Colors.grey)
              ],
            ),
          ),
        ],
      ),
    );
  }
}