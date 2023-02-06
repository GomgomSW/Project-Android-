import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_android/screens/auth/login.dart';
import 'package:project_android/screens/cart/cart.dart';
import 'package:project_android/screens/home/home.dart';
import 'package:project_android/screens/missing/missing_item.dart';

Drawer buildDrawer(BuildContext context) {
  return Drawer(
    backgroundColor: Colors.white.withOpacity(1),
    child: ListView(
      children: <Widget>[
        // Header
        UserAccountsDrawerHeader(
          accountName: Text('Sondaman'),
          accountEmail: Text('sondaman@gmail.com'),
          currentAccountPicture: GestureDetector(
            child: new CircleAvatar(
              backgroundImage: AssetImage('assets/sondaman.jpeg'),
              // child: Icon(Icons.person, color: Colors.white),
            ),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/drawer-bg.jpeg'),
            fit: BoxFit.cover,
          )),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: ListTile(
            title: Text("Home Page"),
            leading: Icon(Icons.home, color: Colors.blue),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MissingPage()));
          },
          child: ListTile(
            title: Text("Missing Item"),
            leading: Icon(
              Icons.view_comfortable_rounded,
              color: Colors.blue,
            ),
          ),
        ),

        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => cart()));
          },
          child: ListTile(
            title: Text('Shopping Cart'),
            leading: Icon(Icons.shopping_cart, color: Colors.blue),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Favorites'),
            leading: Icon(Icons.favorite, color: Colors.blue),
          ),
        ),
        Divider(thickness: 2),

        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
          child: ListTile(
              title: Text('Log Out'),
              leading: Icon(Icons.logout, color: Colors.grey)),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('About'),
            leading: Icon(Icons.help, color: Colors.blue),
          ),
        ),
      ],
    ),
  );
}
