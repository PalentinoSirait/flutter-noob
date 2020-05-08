import 'package:flutter/material.dart';

class InputTransactionCard extends StatelessWidget {
  InputTransactionCard(this.addTransaction);
  final Function addTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Transaction Title'),
                controller: titleController,
                onChanged: (value) => {},
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                controller: amountController,
                onChanged: (value) => {},
              ),
              FlatButton(
                color: Colors.blueGrey,
                textColor: Colors.greenAccent,
                child: Text('Add Transaction'),
                onPressed: () => addTransaction(titleController.text, int.parse(amountController.text))
              )
            ],
          ),
        ));
  }
}
