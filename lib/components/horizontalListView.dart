import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(imageLocation: 'assets/f2.jpg', imageTitle:'Fruits'),
          Category(imageLocation: 'assets/vg2.jpg',imageTitle: 'Veggies',),
          Category(imageLocation: 'assets/top.png',imageTitle: 'Top',),
          Category(imageLocation: 'assets/offers.png',imageTitle: 'Offers',),
          // Category(imageLocation: 'assets/v1.jpg',imageTitle: 'Veggies',),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageTitle;

  Category({this.imageLocation,this.imageTitle});

  @override
  Widget build(BuildContext context) {
    return  
    Container(
      padding: EdgeInsets.all(2.0),
      height: 90.0,
      width: 90.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.asset(imageLocation),
            ListTile(
              title: Text(imageTitle,textAlign: TextAlign.center,),
            )
          ],
        ),
      )
    );
  }
}
