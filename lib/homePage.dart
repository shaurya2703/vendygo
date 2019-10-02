import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import './components/horizontalListView.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/fruits.jpg'),
          AssetImage('assets/frutas.jpg'),
          AssetImage('assets/indian-street-vendor.jpg')
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        autoplayDuration: Duration(milliseconds: 2500),
        dotSize: 2.0,
        indicatorBgPadding: 0.0,
      ),
    );  
    return Container(
      child: ListView(
        children: <Widget>[
          imageCarousel , 
          new Padding(padding: EdgeInsets.all(9.0),),
          new Text('Categories'),
           HorizontalList()          
        ],
      ),
    );
  }
}
