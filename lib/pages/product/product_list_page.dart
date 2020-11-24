import 'package:flutter/material.dart';
import 'package:house_party/components/outlined_text.dart';
import 'package:house_party/components/product_card.dart';
import 'package:house_party/models/product.dart';
import 'package:house_party/pages/product/product_list_controller.dart';

class ProductListPage extends StatefulWidget {
  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  final ProductListController _productListController = ProductListController.instance;
  List<Product> _productList;

  @override
  Widget build(BuildContext context) {
    int idCategory = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: OutlinedText('House Party', fontSize: 22,),
      ),
      
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: RaisedButton(
          child: Text('Ir para carrinho'),
          onPressed: () => null,
        ),
      ),

      body: FutureBuilder(
        future: this._productListController.productWebClient.findByCategory(idCategory),
        builder: (context, snapshot) {
          switch(snapshot.connectionState) {
            case ConnectionState.none:
              break;
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
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
              this._productList = snapshot.data;
              return ListView.builder(
                itemCount: this._productList.length,
                itemBuilder: (context, index) => ProductCard(product: this._productList[index]),
              );
              break;
          }
          return Center(
            child: Text(
              'Error',
              style: TextStyle(fontSize: 28),
            ),
          );
        },
      )

    );
  }
}
