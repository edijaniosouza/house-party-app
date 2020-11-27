import 'package:flutter/material.dart';
import 'package:house_party/http/webclients/user_webclient.dart';
import 'package:house_party/models/address.dart';
import 'package:house_party/models/user.dart';

class RegisterUserController {
  
  static RegisterUserController _instance = RegisterUserController._();
  TextEditingController _nameInputController = TextEditingController();
  TextEditingController _surnameInputController = TextEditingController();
  TextEditingController _emailInputController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordInputController = TextEditingController();
  TextEditingController _repeatPasswordInputController = TextEditingController();
  TextEditingController _streetAddressInputController = TextEditingController();
  TextEditingController _numberAddressInputController = TextEditingController();
  TextEditingController _neighborhoodAddressInputController = TextEditingController();
  TextEditingController _stateAddressInputController = TextEditingController();
  TextEditingController _complementAddressInputController = TextEditingController();
  TextEditingController _numberPhoneInputController = TextEditingController();
  TextEditingController _cpfInputController = TextEditingController();
  String city;
  DateTime _birthday;

  RegisterUserController._();

  get getBirthday => this._birthday;
  void setBirthday(DateTime birthday) {
    this._birthday = birthday;
  }

  static get instance => _instance;

  navigateToCategoryPage(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, '/category', (route) => false);
  }

  User createUser() {
    return User(
      name: nameInputController.text,
      cpf: cpfInputController.text,
      email: emailInputController.text,
      password: passwordInputController.text,
      userName: usernameController.text,
      phone: numberPhoneInputController.text,
      address: Address(
        cep: '00000000',
        street: streetAddressInputController.text,
        number: int.tryParse(numberAddressInputController.text),
        neighborhood: neighborhoodAddressInputController.text,
        city: city,
      )
    );
  }

  saveUserOnDB(User user) {
    UserWebClient().saveUser(user);
  }

  void registerButonAction() {
    saveUserOnDB(
      createUser()
    );
  }

  TextEditingController get nameInputController => _nameInputController;

  set nameInputController(TextEditingController value) {
    _nameInputController = value;
  }

  TextEditingController get surnameInputController => _surnameInputController;

  set surnameInputController(TextEditingController value) {
    _surnameInputController = value;
  }

  TextEditingController get emailInputController => _emailInputController;

  set emailInputController(TextEditingController value) {
    _emailInputController = value;
  }

  TextEditingController get usernameController => _usernameController;

  set usernameController(TextEditingController value) {
    _usernameController = value;
  }

  TextEditingController get passwordInputController => _passwordInputController;

  set passwordInputController(TextEditingController value) {
    _passwordInputController = value;
  }

  TextEditingController get repeatPasswordInputController =>
      _repeatPasswordInputController;

  set repeatPasswordInputController(TextEditingController value) {
    _repeatPasswordInputController = value;
  }

  TextEditingController get streetAddressInputController =>
      _streetAddressInputController;

  set streetAddressInputController(TextEditingController value) {
    _streetAddressInputController = value;
  }

  TextEditingController get numberAddressInputController =>
      _numberAddressInputController;

  set numberAddressInputController(TextEditingController value) {
    _numberAddressInputController = value;
  }

  TextEditingController get neighborhoodAddressInputController =>
      _neighborhoodAddressInputController;

  set neighborhoodAddressInputController(TextEditingController value) {
    _neighborhoodAddressInputController = value;
  }

  TextEditingController get stateAddressInputController =>
      _stateAddressInputController;

  set stateAddressInputController(TextEditingController value) {
    _stateAddressInputController = value;
  }

  TextEditingController get complementAddressInputController =>
      _complementAddressInputController;

  set complementAddressInputController(TextEditingController value) {
    _complementAddressInputController = value;
  }

  TextEditingController get numberPhoneInputController =>
      _numberPhoneInputController;

  set numberPhoneInputController(TextEditingController value) {
    _numberPhoneInputController = value;
  }

  TextEditingController get cpfInputController => _cpfInputController;

  set cpfInputController(TextEditingController value) {
    _cpfInputController = value;
  }

  DateTime get birthday => _birthday;

  set birthday(DateTime value) {
    _birthday = value;
  }
}
