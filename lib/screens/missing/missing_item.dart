import 'package:flutter/material.dart';
import 'package:project_android/components/categories.dart';
import 'package:project_android/components/missing_products.dart';
import 'package:project_android/screens/missing/missing_app_bar.dart';
import 'package:project_android/screens/missing_details/missing_product_details.dart';
import 'package:project_android/screens/profile/drawer.dart';

class MissingPage extends StatefulWidget {
  const MissingPage({Key? key}) : super(key: key);

  @override
  _MissingPageState createState() => _MissingPageState();
}

class _MissingPageState extends State<MissingPage> {
  @override
  Widget build(BuildContext context) {
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
                'Missing Products',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),

          Flexible(child: MissingProducts())
        ],
      ),
    );
  }
}
