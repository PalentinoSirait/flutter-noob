import 'package:flutter/material.dart';
import 'package:flutter_noob/models/User.dart';

class UserCards extends StatelessWidget {
  User _user;

  UserCards(User user) {
    this._user = user;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              '${_user.id} - ${_user.name}',
              style: TextStyle(fontSize: 20.0, fontFamily: 'Roboto'),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
