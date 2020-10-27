class User {
  int _id;
  String _name;
  int _cpf;
  DateTime _dateOfBirth;
  String _userName;
  String _email;
  String _password;
  int _phone;

  User({
    int id,
    String name,
    int cpf,
    DateTime dateOfBirth,
    String email,
    String userName,
    String password,
    int phone
  })
  : this._id = id,
    this._name = name,
    this._dateOfBirth = dateOfBirth,
    this._cpf = cpf,
    this._email = email,
    this._password = password,
    this._phone = phone
  ;

  int get id => _id;
  String get name => _name;
  int get cpf => _cpf;
  DateTime get dateOfBirth => this._dateOfBirth;
  String get userName => _userName;
  String get email => _email;
  String get password => _password;
  int get phone => _phone;

}
