import 'package:flutter/material.dart';
import './products.dart';

class ProductsManager extends StatefulWidget {
  final String startingProduct;
  
  ProductsManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}


class _ProductManagerState extends State<ProductsManager> {
  List<String> _products = [];

  @override
    void initState() {
      _products.add(widget.startingProduct);
      super.initState();
    }

  @override
    void didUpdateWidget(ProductsManager oldWidget) {
      // TODO: implement didUpdateWidget
      super.didUpdateWidget(oldWidget);
    }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                _products.add('Advanced Food Tester');
              });
            },
            child: Text('Add Product'),
          ),
        ),
        Products(_products)
      ],
    );
  }
}
