import 'package:flutter/material.dart';
import 'package:project_android/constant.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Dress",
    "Bag",
    "Shoes",
    "Kid",
    "Laptop",
    "Suit",
    "Wallet"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: myDefaultPadding + 7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: selectedIndex == index
                    ? myTextColor
                    : myAlternativeTextColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: myDefaultPadding / 4),
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.blue : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
