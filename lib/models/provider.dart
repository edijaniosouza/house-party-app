import 'package:house_party/models/address.dart';

class Provider {
  int _idProvider;
  String _companyName;
  int _cnpj;
  Address _address;
  int _phone;

  int get idProvider => this._idProvider;
  String get companyName => this._companyName;
  int get cnpj => this._cnpj;
  Address get address => this._address;
  int get phone => this._phone;
}