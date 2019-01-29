import 'dart:async';

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String description;
  final double price;
  final String imageUrl;

  ProductPage(this.title, this.description, this.price, this.imageUrl);

  _showWarningDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Arw you sure to Delete This Item?'),
            content: Text('This action cannot ne undone!'),
            actions: <Widget>[
              FlatButton(
                child: Text('DISCARD'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text('CONTINUE'),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context, true);
                },
              ),
            ],
          );
        });
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
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Title :  ',
                      style: TextStyle(fontFamily: 'Oswald', fontSize: 20.0),
                    ),
                    Text(
                      '${this.title}',
                      style: TextStyle(fontFamily: 'Oswald', fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Description :  ',
                      style: TextStyle(fontFamily: 'Oswald', fontSize: 20.0),
                    ),
                    Flexible(
                      child: Text(
                        '${this.description}',
                        style: TextStyle(fontFamily: 'Oswald', fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Price :  ',
                      style: TextStyle(fontFamily: 'Oswald', fontSize: 20.0),
                    ),
                    Text(
                      '${this.price} \$',
                      style: TextStyle(fontFamily: 'Oswald', fontSize: 20.0),
                    ),
                  ],
                ),
              ),
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
                    onPressed: () => _showWarningDialog(context),
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
