import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:vendygo/vendorList.dart';
// import 'package:vendygo/vendorListPage.dart';
import './components/horizontalListView.dart';
import './sideDrawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget imageCarousel = new Stack(
    alignment: Alignment.center,
    children: <Widget>[
      Container(
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
      ),
      Text(
        'VendyGo',
        style: TextStyle(
            color: Colors.white, fontSize: 50.0, fontStyle: FontStyle.italic),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDraw(),
      appBar: new AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('VendyGo'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          Stack(
            alignment: Alignment.topRight,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.white),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/cart');
                },
              ),
              new CircleAvatar(
                radius: 8.5,
                backgroundColor: Colors.red,
                child: Text(
                  '0',
                  style: TextStyle(color: Colors.white, fontSize: 10.0),
                ),
              )
            ],
          )
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            imageCarousel,
            new Padding(
              padding: EdgeInsets.all(9.0),
            ),
            new Text('Categories'),
            new Padding(
              padding: EdgeInsets.all(9.0),
            ),
            HorizontalList(),
            Divider(),
            //  new Padding(
            //   padding: EdgeInsets.all(9.0),
            // ),
            VendorList()
          ],
        ),
      ),
    );
  }
}
