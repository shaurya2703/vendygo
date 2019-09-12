import 'package:flutter/material.dart';

class SideDraw extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
    return Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: Icon(Icons.child_care),
            ),
            ListTile(
              title: Text('One'),
              leading: Icon(Icons.looks_one),
            ),
            ListTile(
              title: Text('Two'),
              leading: Icon(Icons.looks_two),
            ),
            ListTile(
              title: Text('Three'),
              leading: Icon(Icons.looks_3),
            ),
          ],
        ),
      );
  }
}