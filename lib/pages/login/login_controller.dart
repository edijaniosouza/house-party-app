import 'package:flutter/material.dart';

class LoginController {
  static LoginController _instance = LoginController._();

  LoginController._();
  
  TextEditingController loginTextController;
  TextEditingController passwordTextController;

  static get getInstance => _instance;
}