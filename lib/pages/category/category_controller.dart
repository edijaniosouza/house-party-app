import 'package:flutter/material.dart';
import 'package:house_party/http/webclients/category_webclient.dart';

class CategoryController {
  static final CategoryController _instance = CategoryController._();
  CategoryWebClient _categoryWebClient = new CategoryWebClient();

  CategoryController._();

  static CategoryController get instance => _instance;
  get categoryWebClient => this._categoryWebClient;

  void navigateToProductPage(BuildContext context) {
    Navigator.pushNamed(context, '/product');
  }
}
