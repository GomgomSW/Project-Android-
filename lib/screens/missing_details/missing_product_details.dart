import 'package:flutter/material.dart';
import 'package:project_android/screens/missing/missing_app_bar.dart';
import 'package:project_android/screens/product_details/product_app_bar.dart';
import 'package:project_android/screens/product_details/product_details.dart';

class MissingProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_floor;
  final product_detail_picture;

  const MissingProductDetails(
      {Key? key,
      this.product_detail_name,
      this.product_detail_floor,
      this.product_detail_picture})
      : super(key: key);

  @override
  _MissingProductDetailsState createState() => _MissingProductDetailsState();
}

class _MissingProductDetailsState extends State<MissingProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarMissing(context),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white.withOpacity(0.8),
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "${widget.product_detail_floor} Floor",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          ///Retrieve Button
          Row(
            children: <Widget>[
              //Size Button

              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text("Retrieve Now"),
                ),
              ),
              new IconButton(
                icon: Icon(Icons.share, color: Colors.blue),
                onPressed: () {},
              ),
              new IconButton(
                icon: Icon(Icons.report, color: Colors.blue),
                onPressed: () {},
              ),
            ],
          ),
          Divider(),
          ListTile(
            title: Text("Product Details"),
            subtitle: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            ),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  "Product Name",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  widget.product_detail_name,
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  "Product Brand",
                  style: TextStyle(color: Colors.grey),
                ),
              ),

              // ==== Craate Product Brand =====
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Brand X",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  "Product Condition",
                  style: TextStyle(color: Colors.grey),
                ),
              ),

              //Create Condition
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "New",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
          Divider(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Simmilar Products",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),

          ///Simmilar_Product
          Container(
            height: 340,
            child: Similar_products(),
          ),
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  const Similar_products({Key? key}) : super(key: key);

  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var products_list = [
    {
      "name": "Bag",
      "picture": "assets/products/shop_laptop.jpeg",
      "old_price": 128,
      "price": 85,
    },
    {
      "name": "Skirt",
      "picture": "assets/products/shop_necklace.jpeg",
      "old_price": 95,
      "price": 70,
    },
    {
      "name": "High Hills",
      "picture": "assets/products/shop_watch2.jpeg",
      "old_price": 85,
      "price": 75,
    },
    {
      "name": "Confy Pants",
      "picture": "assets/products/shop_wallet.jpeg",
      "old_price": 56,
      "price": 42,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products_list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Similar_single_prod(
          prod_name: products_list[index]['name'],
          prod_picture: products_list[index]['picture'],
          prod_old_price: products_list[index]['old_price'],
          prod_price: products_list[index]['price'],
        );
      },
    );
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  const Similar_single_prod(
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
