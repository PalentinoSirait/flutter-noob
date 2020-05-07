import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../model/transaction.dart';

class TransactionCard extends StatelessWidget {
  TransactionCard(this.trx);
  final String _appFonts = 'Roboto';
  final Transaction trx;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
        Card(child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              // VALUE
              Container(
                width: 150,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                decoration: BoxDecoration(border: Border.all(color: Colors.blueGrey, width: 2)),
                child: Text('Rp. ${trx.value}',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: _appFonts, fontSize: 18, fontWeight: FontWeight.bold)),
              ),

              // DESCRIPTION
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(trx.title,
                          textAlign: TextAlign.end,
                          style: TextStyle(fontFamily: _appFonts, fontSize: 15, fontWeight: FontWeight.bold)),
                      Text(DateFormat('dd/mm/yyyy').format(trx.time),
                          textAlign: TextAlign.end,
                          style: TextStyle(fontFamily: _appFonts))
                    ])
              )]
            ))]
    );
  }
}
