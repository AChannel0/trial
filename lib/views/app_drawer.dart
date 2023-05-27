import 'package:flutter/material.dart';
import 'package:cereusfirebase/views/about_screen.dart';
import 'package:cereusfirebase/views/home.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 9, 10, 12),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 0, 0),
                image: DecorationImage(
                  image: AssetImage('headerlogo.jpg'),
                  fit: BoxFit.contain,
                ),
              ),
              child:
                  null, // Provide any child widget you want to display inside the DrawerHeader
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.white),
            title: Text('Home', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite, color: Colors.white),
            title: Text('Collection', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pushNamed(context, '/collection');
            },
          ),
          ListTile(
            leading: Icon(Icons.info, color: Colors.white),
            title: Text('About', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.white),
            title: Text('Settings', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
    );
  }
}
