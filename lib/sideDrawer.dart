import 'package:flutter/material.dart';

class SideDraw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountEmail: Text('xyz123@gmail.com'),
              accountName: Text('Your Name'),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person),
              )),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Icon(
                Icons.home,
                color: Colors.white,
                size: 20.0,
              ),
            ),
            title: Text('Home Page'),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Icon(
                Icons.shopping_basket,
                color: Colors.white,
                size: 20.0,
              ),
            ),
            title: Text('My Orders'),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 20.0,
              ),
            ),
            title: Text('Favourites'),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Icon(
                Icons.fastfood,
                color: Colors.white,
                size: 20.0,
              ),
            ),
            title: Text('Four'),
            onTap: (){},
          ),
          Divider(),
          ListTile(
            trailing: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Icon(
                Icons.help,
                color: Colors.white,
                size: 20.0,
              ),
            ),
            title: Text('About Us'),
            onTap: (){},
          ),
          ListTile(
            trailing: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Icon(
                Icons.exit_to_app,
                color: Colors.white,
                size: 20.0,
              ),
            ),
            title: Text('Log Out'),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
