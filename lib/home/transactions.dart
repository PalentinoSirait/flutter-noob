import 'package:flutter/material.dart';
import './transactions/inputTransaction.dart';
import './transactions/transactionCard.dart';
import '../model/transaction.dart';

class Transactions extends StatefulWidget {
  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  final String _appFonts = 'Roboto';
  final List<Transaction> _transactions = [
    Transaction(id: '1', title: 'Sticker Vinyl Carbon', value: 14750, time: DateTime.now()),
    Transaction(id: '2', title: 'Mousepad', value: 6500, time: DateTime.now()),
    Transaction(id: '3', title: 'Taffware EVA Case', value: 13500, time: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InputTransactionCard(addNewTransaction),
        Container(
          height: 400,
          child: ListView.builder(
              itemCount: _transactions.length,
              itemBuilder: (context, i) => TransactionCard(_transactions[i])))
      ]
    );
  }

  void addNewTransaction(String title, int value) {
    setState(() {
      _transactions.add(Transaction(id: 'x', title: title, value: value, time: DateTime.now()));
    });
  }
}
