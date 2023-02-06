import 'package:flutter/material.dart';
import 'package:project_android/components/cart_product.dart';
import 'package:project_android/screens/cart/cart_app_bar.dart';
import 'package:project_android/screens/cart/cart_bottom_navigator.dart';


class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Cart_products(),
      bottomNavigationBar: buildBottomNavigator(),
    );
  }
}
