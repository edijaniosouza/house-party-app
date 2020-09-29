import 'package:flutter/material.dart';
import 'package:house_party/pages/home/home_page.dart';
import 'package:house_party/pages/login/login_page.dart';
import 'package:house_party/pages/register/register_user_page.dart';

class HouseParty extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'House Party',

      // Nomeia rotas
      routes: {
        '/' : (context) => HomePage(),
        '/user/login': (context) => LoginPage(),
        '/user/register' : (context) => RegisterPage(),
      }
    );
  }
}