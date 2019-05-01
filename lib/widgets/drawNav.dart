import 'package:flutter/material.dart';

class DrawNav extends StatelessWidget {
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('Choose'),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            // leading: Icon(Icons.add),
            title: Text('Home Page'),
            onTap: () {
              Navigator.pushReplacementNamed(context, "/");
            },
          ),
          ListTile(
            // leading: Icon(Icons.add),
            title: Text('Hello Page'),
            onTap: () {
              Navigator.pushReplacementNamed(context, "/helloPage");
            },
          )
        ],
      ),
    );
  }
}
