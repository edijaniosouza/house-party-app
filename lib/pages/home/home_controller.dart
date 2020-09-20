import 'package:flutter/material.dart';

class HomeController {

  static void navigateToLoginPage(BuildContext context) {
    Navigator.pushNamed(context, '/login');
  }
  static void navigateToEmpresaPage(BuildContext context) {
    Navigator.pushNamed(context, '/empresa');
  }
}