import 'package:flutter/material.dart';
import 'package:house_party/components/lateral_menu.dart';
import 'package:house_party/components/outlined_text.dart';
import 'package:house_party/http/webclients/category_webclient.dart';
import 'package:house_party/models/category.dart';
import 'package:house_party/pages/category/category_controller.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final CategoryController _categoryController = CategoryController.instance;
  final CategoryWebClient _categoryWebClient = CategoryWebClient();
  List<Category> _categoriesList;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: OutlinedText(
          'Categorias',
          fontSize: 22,
        ),
      ),

      drawer: LateralMenu(),

      body: FutureBuilder(
        future: this._categoryWebClient.findAll(),
        builder: (context, snapshot) {
          switch(snapshot.connectionState) {
            case ConnectionState.none:
              break;
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator()
              );
              break;
            case ConnectionState.active:
              break;
            case ConnectionState.done:
              if(snapshot.data == null) {
                return Center(
                  child: Text(
                    'Error',
                    style: TextStyle(
                      fontSize: 28
                    ),
                  )
                );
              }
              this._categoriesList = snapshot.data;
              return ListView.builder(
                padding: EdgeInsets.all(8),
                itemCount: this._categoriesList.length,
                itemBuilder: (context, index) {

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 40,
                      child: RaisedButton(
                        child: Text(this._categoriesList[index].description),
                        color: Colors.white,
                        shape: Border.all(
                            width: 0.5
                        ),
                        onPressed: () {
                          _categoryController.navigateToProductPage(
                            context,
                            _categoriesList[index].id
                          );
                        },
                      ),
                    ),
                  );
                }
              );
              break;
          }
          return Center(child: Text('Error'));
        }
      )
    );
  }
}
