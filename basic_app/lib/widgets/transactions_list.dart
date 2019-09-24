import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionsList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionsList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: transactions.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  'No transaction add yet!!',
                  style: Theme.of(context).textTheme.title,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.contain,
                  ),
                )
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  elevation: 2,
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 15.0,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                            width: 2,
                          ),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          '\$${transactions[index].amount.toStringAsFixed(2)}', // make dimical number point
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '${transactions[index].title}',
                            style: Theme.of(context).textTheme.title,
                          ),
                          Text(
                            DateFormat('yMMMMEEEEd', null)
                                .format(transactions[index].date),
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}
