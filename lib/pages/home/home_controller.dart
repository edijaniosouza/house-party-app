import 'package:flutter/material.dart';

class HomeController {

  static HomeController _instance = HomeController._();

  HomeController._();

  static get getInstace => _instance;

  void navigateToLoginPage(BuildContext context) {
    Navigator.pushNamed(context, '/user/login');
  }

  void navigateToRegisterPage(BuildContext context) {
    Navigator.pushNamed(context, '/user/register');
  }

  static void navigateToRegisterCompanyPage(BuildContext context) {
    Navigator.pushNamed(context, '/company/register');
  }
}