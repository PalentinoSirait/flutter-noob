import 'package:flutter/cupertino.dart';

class Transaction {
  final String id;
  final String title;
  final int value;
  final DateTime time;

  Transaction({
    @required this.id,
    @required this.title,
    @required this.value,
    @required this.time
  });
}
