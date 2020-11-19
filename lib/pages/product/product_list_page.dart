import 'package:flutter/material.dart';
import 'package:house_party/components/outlined_text.dart';
import 'package:house_party/pages/product/product_list_controller.dart';

class ProductListPage extends StatefulWidget {
  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  final ProductListController _productListController = ProductListController.instance;
  @override
  Widget build(BuildContext context) {
    int idCategory = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: OutlinedText('House Party'),
      ),

      body: Column(),

    );
  }
}
