import 'package:flutter/material.dart';
import 'package:house_party/pages/category/category_page.dart';
import 'package:house_party/pages/home/home_page.dart';
import 'package:house_party/pages/login/login_page.dart';
import 'package:house_party/pages/product/product_list_page.dart';
import 'package:house_party/pages/register_user/register_user_page.dart';
import 'package:house_party/pages/company/register_company_page.dart';

class HouseParty extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'House Party',
      initialRoute: '/',

      // Nomeia rotas
      routes: {
        '/' : (context) => HomePage(),
        '/user/login': (context) => UserLoginPage(),
        '/user/register' : (context) => RegisterUserPage(),
        '/company/register' : (context) => RegisterCompanyPage(),
        '/category' : (context) => CategoryPage(),
        '/product' : (context) => ProductListPage(),
      },

      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.grey[400],
        appBarTheme: AppBarTheme(
          color: Colors.orange[300],
          centerTitle: true,
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.orange[300],
          textTheme: ButtonTextTheme.normal,
        ),
      ),
    );
  }
}
