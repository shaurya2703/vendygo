import 'package:flutter/material.dart';
import './sideDrawer.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.blueGrey),
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),

    );
  }
}
