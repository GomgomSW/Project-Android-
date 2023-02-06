import 'package:flutter/material.dart';
import 'package:project_android/screens/home/home.dart';
import 'package:project_android/screens/missing/missing_item.dart';


class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int currentIndex = 0;
  List<Widget> pagesView = <Widget>[
    HomePage(),
    MissingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pagesView[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue[400],
        unselectedItemColor: Colors.grey[600],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_comfortable_rounded),
            label: 'Missing Item',
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
