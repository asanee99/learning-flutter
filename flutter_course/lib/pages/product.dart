import 'dart:async';

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String description;
  final double price;
  final String imageUrl;

  ProductPage(this.title, this.description, this.price, this.imageUrl);

  Widget _buildProductInfoSection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Title :  ',
              style: TextStyle(fontFamily: 'Oswald', fontSize: 20.0),
            ),
            Text(
              title,
              style: TextStyle(fontFamily: 'Oswald', fontSize: 20.0),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Description :  ',
              style: TextStyle(fontFamily: 'Oswald', fontSize: 20.0),
            ),
            Flexible(
              child: Text(
                description,
                style: TextStyle(fontFamily: 'Oswald', fontSize: 20.0),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Price :  ',
              style: TextStyle(fontFamily: 'Oswald', fontSize: 20.0),
            ),
            Text(
              '\$ ${price.toString()} ',
              style: TextStyle(fontFamily: 'Oswald', fontSize: 20.0),
            ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('Back Button Pressed');
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset('assets/food.jpg'),
              SizedBox(
                height: 10.0,
              ),
              _buildProductInfoSection(),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text('Back'),
                    color: Theme.of(context).accentColor,
                    onPressed: () => Navigator.pop(context),
                  ),
                  RaisedButton(
                    child: Text('Delete'),
                    color: Theme.of(context).primaryColor,
                    onPressed: () => {},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
