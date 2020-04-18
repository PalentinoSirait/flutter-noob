import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          FloatingActionButton(
            onPressed: () => buttonClick(),
            child: Icon(Icons.add),
            splashColor: Colors.blueGrey,
          ),
          SizedBox(height: 30.0),
          Text('You clicked $count times.', style: TextStyle(fontFamily: 'ComicNeue', fontSize: 20.0)),
        ],
      ),
    );
  }

  buttonClick() {
    setState(() => {this.count += 1});
  }

}
