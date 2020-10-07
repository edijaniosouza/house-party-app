import 'package:flutter/material.dart';
import 'package:house_party/components/outlined_text.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: OutlinedText('House Party'),
      ),

      body: Column(),
      
    );
  }
}