import 'package:flutter/material.dart';
import 'package:fluttertravelapp/widgets/icon_card.dart';
import 'package:fluttertravelapp/widgets/images_cards.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     IconButton(
                         icon: Icon(Icons.menu, color: Colors.black,),
                         onPressed: (){}
                     ),
                     IconButton(
                         icon: Icon(Icons.person, color: Colors.black,),
                         onPressed: (){}
                     ),
                   ],
                 ),
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan( text: "Hello, ", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: Colors.pinkAccent)),
                              TextSpan( text: 'what are you searching for')
                            ], style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500, color: Colors.black),
                          )
                      ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconCard(iconData: Icons.home, text: 'Hospitality'),
                    IconCard(iconData: Icons.directions_boat, text: 'Tour'),
                    IconCard(iconData: Icons.flight, text: 'Flight'),
                    IconCard(iconData: Icons.directions, text: 'Adventures'),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('Best Experiences', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                    ),
                    IconButton(
                        icon: Icon(Icons.more, color: Colors.black,),
                        onPressed: (){}
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                ImageCards(),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.home, color: Colors.red, size: 30,),
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(Icons.search, color: Colors.black, size: 30,),
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(Icons.favorite_border, color: Colors.black, size: 30,),
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(Icons.person_outline, color: Colors.black, size: 30,),
                        onPressed: (){},
                      ),
                    ],
                  ),
                )

              ],
            ),
          )
      ),
    );
  }
}
