import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../model/transaction.dart';

class Home extends StatelessWidget {
  String appTitle = 'Expense Planner';
  String appFonts = 'Roboto';

  final List<Transaction> transactions = [
    Transaction(id: '1', title: 'trx1', value: 10, time: DateTime.now()),
    Transaction(id: '2', title: 'trx2', value: 100, time: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.appTitle, style: TextStyle(fontFamily: this.appFonts)),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[500],
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              child: Container(
                  child: Text('CHART'),
                  width: double.infinity,
                  color: Colors.blueGrey),
              elevation: 5,
            ),
            Column(
                children: transactions.map((trx) {
                  return Card(child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 150,
                        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                        decoration: BoxDecoration(border: Border.all(color: Colors.blueGrey, width: 2)),
                        child: Text(
                          'Rp. ${trx.value}',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontFamily: this.appFonts, fontSize: 18, fontWeight: FontWeight.bold)
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(trx.title, textAlign: TextAlign.end, style: TextStyle(fontFamily: this.appFonts, fontSize: 15, fontWeight: FontWeight.bold)),
                            Text(DateFormat('dd/mm/yyyy').format(trx.time), textAlign: TextAlign.end),
                          ],
                        ),
                      )

                    ],
                  ));
                }).toList())
          ]),
    );
  }

}
