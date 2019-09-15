import 'dart:async';

import 'package:flutter/material.dart';

class NewTransactions extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addNewTx;

  NewTransactions(this.addNewTx);

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }
    /* print(titleInput);
     print(amountInput); */
    addNewTx(
      enteredTitle,
      enteredAmount,
    );
    print(enteredTitle);
    print(enteredAmount);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Title'),
                controller: titleController,
                // onSubmitted: (_) => submitData, // use when u want to save data whn u summited
                // onChanged: (val) => titleInput = val,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                controller: amountController,
                // onChanged: (val) => amountInput = val,
                keyboardType: TextInputType.number,
                // onSubmitted: (_) => submitData,
              ),
              FlatButton(
                child: Text('Add Transactions'),
                textColor: Colors.purple,
                onPressed: submitData,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
