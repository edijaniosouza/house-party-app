import 'package:flutter/material.dart';

class HomeController {

  static HomeController _instance = HomeController._();

  HomeController._();

  static get getInstace => _instance;

  void navigateToLoginPage(BuildContext context) {
    Navigator.pushNamed(context, '/login');
  }

  void navigateToRegisterPage(BuildContext context) {
    Navigator.pushNamed(context, '/register');
  }

}