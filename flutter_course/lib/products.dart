import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products);

  Widget _builderProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(products[index])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    
    Widget productCard;

    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _builderProductItem,
        itemCount: products.length,
      );
    } else {
      productCard = Center(
        child: Text('No Products found, Please add some product'),
      );
    }
    return productCard;
  }
}
