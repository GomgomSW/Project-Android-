import 'package:flutter/material.dart';

Container buildBottomNavigator() {
  return Container(
    color: Colors.white,
    child: Row(children: <Widget>[
      Expanded(
        child: ListTile(
          title: Text('Total: '),
          subtitle: Text('\$230'),
        ),
      ),
      Container(
        child: Expanded(
          child: MaterialButton(
            onPressed: () {},
            child: Text(
              'Check Out',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
          ),
        ),
      )
    ]),
  );
}
