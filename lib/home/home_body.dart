import 'package:flutter/material.dart';
import 'package:flutter_noob/home/home_body_cards.dart';
import 'package:flutter_noob/models/User.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List<User> users = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(child:
          Column(children: users.map((user) => UserCards(user)).toList())),
          SizedBox(height: 20.0),
          Center(
            child: Row(
              children: <Widget>[
                FloatingActionButton(
                  onPressed: () => addUser(),
                  child: Icon(Icons.add),
                  splashColor: Colors.blueGrey,
                ),
                SizedBox(width: 20.0),
                FloatingActionButton(
                  onPressed: () => removeUser(),
                  child: Icon(Icons.remove),
                  splashColor: Colors.redAccent,
                ),
              ],
            ),
          ),
      ],
    );
  }

  addUser() {
    int id = this.users.length + 1;
    if (id <=6 ) {
      setState(() => {this.users.add(User(id: id, name: 'USER$id'))});
    }
  }

  removeUser() {
    if (users.length != 0) {
      setState(() => this.users.removeLast());
    }
  }
}
