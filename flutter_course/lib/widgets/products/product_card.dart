import 'package:flutter/material.dart';

import './price_tag.dart';

import '../ui_elements/title_default.dart';
import './address_tag.dart';

class ProductCard extends StatelessWidget {
  final Map<String, dynamic> product;
  final int indexProduct;

  ProductCard(this.product, this.indexProduct);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(product['image']),
          Container(
            height: 20.0,
          ),
          Container(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TitleDefault(product['title']),
                  SizedBox(
                    width: 10.0,
                  ),
                  PriceTag(product['price'].toString()),
                ],
              )),
          AddressTag('Thailand, Factory Chocolate'),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.info),
                color: Theme.of(context).accentColor,
                onPressed: () => Navigator.pushNamed<bool>(
                    context, '/product/' + indexProduct.toString()),
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                color: Colors.red,
                onPressed: () => {},
              )
            ],
          )
        ],
      ),
    );
  }
}
