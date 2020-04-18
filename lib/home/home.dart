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
      ),
      body: HomeBody(),
      floatingActionButton: FloatingActionButton(
        child: Text('click', style: TextStyle(fontFamily: this.appFonts)),
        backgroundColor: Colors.blueGrey[600],
        onPressed: () => buttonClick(),
      ),
    );
  }

  void buttonClick() {
    print('Button clicked.');
  }

}
