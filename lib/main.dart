import 'package:flutter/material.dart';
import './sideDrawer.dart';
import './homePage.dart';
import './cart.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.blueGrey),
    debugShowCheckedModeBanner: false,
    home: MainPage(),
  ));
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => Cart(),
                    ),
                  );
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
      body: HomePage(),
    );
  }
}
