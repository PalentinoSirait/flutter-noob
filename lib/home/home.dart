import 'package:flutter/material.dart';
import './transactions.dart';

class Home extends StatelessWidget {
  final String appTitle = 'Expense Planner';
  final String appFonts = 'Roboto';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.appTitle, style: TextStyle(fontFamily: this.appFonts)),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[500],
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              elevation: 5,
              child: Container(
                  child: Text('CHART'),
                  width: double.infinity,
                  color: Colors.blueGrey),
            ),
            Transactions(),
          ]),
    );
  }
}
