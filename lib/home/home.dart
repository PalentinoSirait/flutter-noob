import 'package:flutter/material.dart';
import 'package:flutter_noob/home/home_body.dart';

class Home extends StatelessWidget {
  String appTitle = 'App Title';
  String appFonts = 'Roboto';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.appTitle, style: TextStyle(fontFamily: this.appFonts)),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[500],
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.grey[400],
        padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        child: HomeBody()
      ),
    );
  }

}
