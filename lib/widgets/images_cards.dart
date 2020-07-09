import 'package:flutter/material.dart';
import 'package:fluttertravelapp/models/Places.dart';
import 'package:fluttertravelapp/widgets/image_card.dart';

class ImageCards extends StatefulWidget {
  @override
  _ImageCardsState createState() => _ImageCardsState();
}

class _ImageCardsState extends State<ImageCards> {
  List<Place> images = [
    Place(place: 'Lagos', image: '1.jpg', days: 7),
    Place(place: 'Anambra', image: '1.jpg', days: 13),
    Place(place: 'Abuja', image: '1.jpg', days: 2),
    Place(place: 'Rivers', image: '1.jpg', days: 9),
    Place(place: 'Kano', image: '1.jpg', days: 6),
    Place(place: 'Enugu', image: '1.jpg', days: 12)
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (_, index){
            return ImageCard(
              place: images[index],
              name: images[index].place,
              days: images[index].days,
              picture: images[index].image,
            );
          },
      ),
    );
  }
}
