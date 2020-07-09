import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertravelapp/models/Places.dart';

class Details extends StatelessWidget {

  final Place place;

  Details({this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                  ),
                  child: Image.asset('images/${place.image}', height: 400, width: double.infinity, fit: BoxFit.fill,),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.calendar_today, color: Colors.grey, size: 20,),
                      SizedBox(width: 5,),
                      Text('${place.days} days', style: TextStyle(color: Colors.grey),)
                    ],
                  ),
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: '${place.place} \n', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: Colors.black)),
                          TextSpan(text: 'These are some dummie text that has no exact meaning, except you decide to read meaning to some meaningless sentence and figure out how to make some sense of it',
                              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: Colors.black)
                          )
                        ]
                      ),
                    ),
                  ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only( topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                    color: Colors.red[400],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(text: 'Price\n', style: TextStyle(fontSize: 18)),
                                  TextSpan(text: '\#4000', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)
                                  ),
                                ]
                              ),
                          ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 8,
                                  offset: Offset(1, 1)
                                )
                              ]
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text("Book a tour", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),),
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
              )

            ],
          ),
          Positioned(
            top: 20,
            left: 10,
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Align(
                alignment: Alignment.topLeft,
                child: Icon(Icons.arrow_back_ios),
              ),
            ),
          )
        ],
      ),
    );
  }
}

