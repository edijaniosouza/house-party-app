import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:house_party/pages/category/category_page.dart';
import 'package:house_party/pages/home/home_page.dart';
import 'package:house_party/pages/login/login_page.dart';
import 'package:house_party/pages/product/product_list_page.dart';
import 'package:house_party/pages/register_user/register_user_page.dart';
import 'package:house_party/theme/app_theme.dart';

class HouseParty extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: AppTheme().defaultTheme,
      title: 'House Party',

      initialRoute: '/',
      routes: {
        '/' : (context) => HomePage(),
        '/user/login': (context) => UserLoginPage(),
        '/user/register' : (context) => RegisterUserPage(),
        '/category' : (context) => CategoryPage(),
        '/product' : (context) => ProductListPage(),
      },

      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('pt', 'BR'),
      ],
    );
  }
}
