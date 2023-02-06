import 'package:flutter/material.dart';
import 'package:project_android/screens/home/home.dart';

AppBar buildAppBarMissing(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.lightBlue,
    title: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        child: Text('IFound')),
    actions: <Widget>[
      new IconButton(
        icon: Icon(Icons.search),
        onPressed: () {},
      ),
    ],
  );
}
