import 'package:flutter/material.dart';

class HomeController {

  static void navigateToLoginPage(BuildContext context) {
    Navigator.pushNamed(context, '/login');
  }

  static void navigateToRegisterCompanyPage(BuildContext context) {
    Navigator.pushNamed(context, '/company/register');
  }
}