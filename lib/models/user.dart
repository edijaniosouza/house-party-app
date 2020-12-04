import 'package:house_party/models/address.dart';

class User {
  int _id;
  String _name;
  String _cpf;
  DateTime _dateOfBirth;
  String _userName;
  String _email;
  String _password;
  String _phone;
  Address _address;

  User({
    int id,
    String name,
    String cpf,
    DateTime dateOfBirth,
    String email,
    String userName,
    String password,
    String phone,
    Address address
  })
  : this._id = id,
    this._name = name,
    this._dateOfBirth = dateOfBirth,
    this._cpf = cpf,
    this._email = email,
    this._password = password,
    this._phone = phone,
    this._address = address
  ;

  User.fromJson(Map<String, dynamic> json) {
    this._name = json['nome'];
    this._email = json['email'];
    this._userName = json['usuario'];
    this._password = json['senha'];
    this._cpf = json['cpf'];
    this._dateOfBirth = DateTime.parse(json['dt_nascimento']);
    this._address = Address.fromJson(json['endereco']);
    this._phone = json['telefone'];
  }

  Map<String, dynamic> toMap() {
    return {
      'nome' : this._name,
      'email' : this._email,
      'usuario' : this._userName,
      'senha' : this._password,
      'cpf' : this._cpf,
      'telefone' : this._phone,
      'dt_nascimento' : this._dateOfBirth.toString(),
      'endereco' : this._address.toMap(),
    };
  }

  int get id => _id;
  String get name => _name;
  String get cpf => _cpf;
  DateTime get dateOfBirth => this._dateOfBirth;
  String get userName => _userName;
  String get email => _email;
  String get password => _password;
  String get phone => _phone;
  Address get address => this._address;

  @override
  String toString() {
    return 'USER: {id: $id, nome: $name, cpf: $cpf, '
      'date of birth: $dateOfBirth, username: $userName, email: $email, '
      'password: $password, phone: $phone, address: ${address.toString()}}'
    ;
  }
}
