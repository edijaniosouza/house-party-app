import 'package:flutter/material.dart';
import 'package:house_party/components/outlined_text.dart';
import 'package:house_party/dao/category_dao.dart';
import 'package:house_party/models/category.dart';
import 'package:house_party/pages/category/category_controller.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final CategoryController _categoryController = CategoryController.instance;
  List<Category> _categoriesList = getCategories();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: OutlinedText(
          'House Party',
          fontSize: 22,
        ),
      ),

      body: ListView.builder(

        padding: EdgeInsets.all(8),
        itemCount: this._categoriesList.length,
        itemBuilder: (context, index) {

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 40,
              child: RaisedButton(
                child: Text(this._categoriesList[index].getDescription),
                color: Colors.white,
                shape: Border.all(
                  width: 0.5
                ),
                onPressed: () {
                  _categoryController.navigateToProductPage(context);
                },
              ),
            ),
          );

        }

      ),
    );
  }
}