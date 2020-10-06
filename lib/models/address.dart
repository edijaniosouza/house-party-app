class Address {
  int _id;
  int _cep;
  String _street;
  int _number;
  String _complement;
  String _neighborhood;
  String _city;

  Address(
    {
      int id,
      int cep,
      String street,
      int number,
      String complement,
      String neighborhood,
      String city
    }
  )
  : this._id = id,
    this._cep = cep,
    this._street = street,
    this._number = number,
    this._complement = complement,
    this._neighborhood = neighborhood,
    this._city = city
  ;

  int get id => _id;
  int get cep => _cep;
  String get street => _street;
  int get number => _number;
  String get city => _city;
  String get neighborhood => _neighborhood;
  String get complement => _complement;

}