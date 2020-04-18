import 'package:flutter/material.dart';
import 'package:flutter_noob/models/User.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {

  List<User> users = [
    User(id: 1, name: 'user1', status: false),
    User(id: 2, name: 'user2', status: true),
    User(id: 3, name: 'user3', status: true),
    User(id: 4, name: 'user3', status: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(children: users.map((user) => this.userCards(user)).toList()));
  }

  Widget userCards(User user) {
    return Card(
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              '${user.id} - ${user.name}',
              style: TextStyle(fontSize: 20.0, fontFamily: 'Roboto'),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }

}
