import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get defaultTheme => ThemeData(
    primaryColor: Colors.orange[700],
    backgroundColor: Colors.orange[700],
    scaffoldBackgroundColor: Colors.grey[850],

    appBarTheme: AppBarTheme(
      color: Colors.orange[700],
      centerTitle: true,
    ),

    bottomAppBarColor: Colors.orange[700],

    buttonTheme: ButtonThemeData(
      buttonColor: Colors.orange[700],
      textTheme: ButtonTextTheme.primary,
    ),

    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(
        color: Colors.orange,
        fontSize: 18
      ),

      hintStyle: TextStyle(color: Colors.white54),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          style: BorderStyle.solid,
          color: Colors.white54
        ),
      ),
      errorStyle: TextStyle(
        color: Colors.red[300],
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white, style: BorderStyle.solid
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red[400],
          style: BorderStyle.solid
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
          style: BorderStyle.solid
        ),
      ),
    ),
  );
}
