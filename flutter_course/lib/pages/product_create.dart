import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;
  final Function deleteProduct;

  ProductCreatePage(this.addProduct, this.deleteProduct);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductCreateProductPage();
  }
}

class _ProductCreateProductPage extends State<ProductCreatePage> {
  String _titleValue;
  String _descriptionValue;
  double _priceValue;

  Widget _buildTitleField() {
    return TextField(
      decoration: InputDecoration(labelText: 'Product Title'),
      keyboardType: TextInputType.text,
      maxLines: 1,
      onChanged: (value) {
        setState(() {
          _titleValue = value;
        });
      },
    );
  }

  Widget _buildDescriptionField() {
    return TextField(
      decoration: InputDecoration(labelText: 'Product Description'),
      keyboardType: TextInputType.text,
      maxLines: 4,
      onChanged: (value) {
        setState(() {
          _descriptionValue = value;
        });
      },
    );
  }

  Widget _buildPriceField() {
    return TextField(
      decoration: InputDecoration(labelText: 'Product Price'),
      keyboardType: TextInputType.number,
      maxLines: 1,
      onChanged: (value) {
        setState(() {
          _priceValue = double.parse(value);
        });
      },
    );
  }

  void _summitedForm() {
    final Map<String, dynamic> product = {
      'title': _titleValue,
      'description': _descriptionValue,
      'price': _priceValue,
      'image': 'assets/food.jpg'
    };
    widget.addProduct(product);
    print(this._titleValue);
    print(this._descriptionValue);
    print(this._priceValue);
    Navigator.pushReplacementNamed(context, '/products');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          _buildTitleField(),
          _buildDescriptionField(),
          _buildPriceField(),
          /* TextField(
            decoration: InputDecoration(labelText: 'Product Desrciption'),
            maxLines: 4,
            onChanged: (String value) {
              setState(() {
                _descriptionValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Product Price'),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                _priceValue = double.parse(value);
              });
            },
          ), */
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            child: Text('Save'),
            color: Theme.of(context).accentColor,
            textColor: Colors.white,
            onPressed: _summitedForm,
          )
        ],
      ),
    );
  }
}
