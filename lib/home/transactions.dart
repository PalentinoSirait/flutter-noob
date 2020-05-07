import 'package:flutter/material.dart';
import './transactions/inputTransaction.dart';
import './transactions/transactionCard.dart';
import '../model/transaction.dart';

class Transactions extends StatefulWidget {
  @override
  _TransactionsState createState() => _TransactionsState();
}

final String _appFonts = 'Roboto';
final List<Transaction> _transactions = [
  Transaction(id: '1', title: 'Sticker Vinyl Carbon', value: 14750, time: DateTime.now()),
  Transaction(id: '2', title: 'Mousepad', value: 6500, time: DateTime.now()),
  Transaction(id: '3', title: 'Taffware EVA Case', value: 13500, time: DateTime.now()),
];

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InputTransactionCard(),
        Column(children: _transactions.map((trx) => TransactionCard(trx)).toList())
      ],
    );
  }
}
