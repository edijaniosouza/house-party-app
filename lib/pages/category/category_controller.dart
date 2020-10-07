import 'package:flutter/cupertino.dart';

class CategoryController {
  static final CategoryController _instance = CategoryController._();

  CategoryController._();

  static CategoryController get instance => _instance;

  void navigateToProductPage(BuildContext context) {
    Navigator.pushNamed(context, '/product');
  }
}