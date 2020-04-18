import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[400],
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Center(
          child: Text('Body content goes here.', style: TextStyle(fontFamily: 'ComicNeue'))
      ),
    );
  }
}
