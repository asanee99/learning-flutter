import 'package:flutter/material.dart';
import './products.dart';
/* import './product_control.dart'; */

class ProductsManager extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  /* final Function addProduct;
  final Function deleteProduct; */

  ProductsManager(this.products);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Expanded(child: Products(products))
      ],
    );
  }
}
