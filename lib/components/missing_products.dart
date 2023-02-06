import 'package:flutter/material.dart';
import 'package:project_android/screens/missing_details/missing_product_details.dart';

class MissingProducts extends StatefulWidget {
  const MissingProducts({Key? key}) : super(key: key);

  @override
  _MissingProductsState createState() => _MissingProductsState();
}

class _MissingProductsState extends State<MissingProducts> {
  var missing_list = [
    {
      "name": "Bag",
      "picture": "assets/missing/missing_bag.jpeg",
      "floor": "4th"
    },
    {
      "name": "Laptop",
      "picture": "assets/missing/missing_laptop.jpeg",
      "floor": "2nd"
    },
    {
      "name": "wallet",
      "picture": "assets/missing/missing_wallet.jpeg",
      "floor": "2nd "
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: missing_list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Single_prod(
            prod_name: missing_list[index]['name'],
            prod_picture: missing_list[index]['picture'],
            prod_floor: missing_list[index]['floor']);
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_floor;

  const Single_prod({
    Key? key,
    this.prod_name,
    this.prod_picture,
    this.prod_floor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: Text('Card Details'),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MissingProductDetails(
                    // Passing Values -> DetailProduct
                    product_detail_name: prod_name,
                    product_detail_picture: prod_picture,
                    product_detail_floor: prod_floor,
                  ),
                ),
              ),
              child: GridTile(
                footer: Container(
                    color: Colors.white.withOpacity(0.8),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            prod_name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        Text(
                          "${prod_floor} Floor",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}
