class User {
  int _id;
  String _name;
  bool _status;

  User({int id, String name, bool status}) {
    this._id = id;
    this._name = name;
    this._status = status;
  }

  int get id => _id;

  String get name => _name;

  setName(String value) {
    _name = value;
  }

  get status => _status;

  setStatus(bool value) {
    _status = value;
  }
}
