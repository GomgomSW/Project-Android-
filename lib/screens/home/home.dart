import 'package:flutter/material.dart';

import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:project_android/components/categories.dart';
import 'package:project_android/components/products.dart';
import 'package:project_android/screens/home/home_app_bar.dart';
import 'package:project_android/screens/profile/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

var scaffoldKey = GlobalKey<ScaffoldState>();

class _HomePageState extends State<HomePage> {
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget image_caoursel = new Container(
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/products/shop_bag2.jpeg'),
          AssetImage('assets/products/shop_heels.jpeg'),
          AssetImage('assets/products/shop_monitor.jpeg'),
          AssetImage('assets/products/shop_watch.jpeg'),
          AssetImage('assets/products/shop_dress2.jpeg'),
        ],
        autoplay: true,
        // animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1200),
        dotSize: 4,
        dotColor: Colors.white60,
        dotBgColor: Colors.transparent,
        indicatorBgPadding: 5,
      ),
    );

    return Scaffold(
      appBar: buildAppBar(context),
      drawer: buildDrawer(context),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 0, 10),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Most Viewd Product',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),

          ///Image Carousel
          image_caoursel,

          Padding(
            ///Padding Widget
            padding: EdgeInsets.fromLTRB(10, 20, 0, 10),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Categories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),

          SizedBox(height: 15),

          Categories(),

          SizedBox(height: 15),

          ///Padding Widget
          Padding(
            ///Padding Widget
            padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Recent Product',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),

          ///GridView Widget
          Flexible(
            // height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
