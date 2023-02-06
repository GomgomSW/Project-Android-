import 'package:flutter/material.dart';
import 'package:project_android/screens/cart/cart.dart';
import 'package:project_android/screens/home/home.dart';
import 'package:project_android/screens/profile/drawer.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white54,
    leading: Builder(
      builder: (context) => IconButton(
        icon: Icon(
          Icons.menu_rounded,
          color: Colors.black,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
    ),
    title: Text(
      'IFound',
      style: TextStyle(
        color: Colors.black87,
      ),
    ),
    centerTitle: true,
    actions: <Widget>[
      new IconButton(
        icon: Icon(
          Icons.search,
          color: Colors.black87,
        ),
        onPressed: () {},
      ),
      new IconButton(
        icon: Icon(
          Icons.shopping_cart,
          color: Colors.black87,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => cart()));
        },
      ),
    ],
  );
}
