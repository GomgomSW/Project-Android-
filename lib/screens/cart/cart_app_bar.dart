import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.lightBlue,
    title: Text('Cart'),
    actions: <Widget>[
      new IconButton(
        icon: Icon(Icons.search),
        onPressed: () {},
      ),
    ],
  );
}
