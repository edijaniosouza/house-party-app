import 'package:flutter/material.dart';

class LoginController {
  static LoginController _instance = LoginController._();

  LoginController._();
  
  final TextEditingController loginTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static get getInstance => _instance;
  GlobalKey<FormState> get formKey => this._formKey;

  void navigateToCategoryPage(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, '/category', (route) => false);
  }

  void validateAccess(BuildContext context) {
    if(this._formKey.currentState.validate()) {
      if(this.loginTextController.text.contains('@')) {

      }
    }
  }

  validateUserInput(String value) {
    if(value.isEmpty || value.length < 3) {
      return 'É necessário informar uma forma de acesso valida';
    }
  }

  validatePasswordInput(String value) {
    if(value.isEmpty) {
      return 'Informe sua senha';
    }
  }
  


}
