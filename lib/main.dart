import 'package:flutter/material.dart';
import 'package:vendygo/cart.dart';

import './homePage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     theme:ThemeData(
       primaryColor: Colors.blueGrey
     ),
     debugShowCheckedModeBanner: false,
     home: HomePage(),
    routes: {
      // '/':(BuildContext context)=>HomePage(),
      '/cart':(BuildContext context)=>Cart(),
    },
   );
  }
}
