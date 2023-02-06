import 'package:flutter/material.dart';
import 'package:project_android/screens/product_details/product_details.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Bag",
      "picture": "assets/products/shop_bag.jpeg",
      "old_price": 128,
      "price": 85,
    },
    {
      "name": "Dress",
      "picture": "assets/products/shop_dress.jpeg",
      "old_price": 100,
      "price": 55,
    },
    {
      "name": "White Dress",
      "picture": "assets/products/shop_dress2.jpeg",
      "old_price": 80,
      "price": 60,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index) {
        return Single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  const Single_prod(
      {Key? key,
      this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: Text('Card Details'),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductDetails(
                    // Passing Values -> DetailProduct
                    product_detail_name: prod_name,
                    product_detail_new_price: prod_price,
                    product_detail_old_price: prod_old_price,
                    product_detail_picture: prod_picture,
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
                          "\$${prod_price}",
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
