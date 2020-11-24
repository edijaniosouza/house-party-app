import 'dart:convert';

import 'package:house_party/http/webclient.dart';
import 'package:house_party/models/product.dart';
import 'package:http/http.dart';

class ProductWebClient {

  Future<List<Product>> findAll() async {
    Response response = await client.get('$url/produto');
    List<dynamic> responseJson = jsonDecode(response.body);
    return responseJson.map((json) => Product.fromJson(json)).toList();
  }

  Future<Product> findById(int id) async {
    Response response = await client.get('$url/produto/$id');
    Product responseJson = jsonDecode(response.body);
    return responseJson;
  }

  Future<List<Product>> findByCategory(int idCategory) async {
    Response response = await client.get(
      '$url/produto/categoria?categoria=$idCategory'
    ).timeout(Duration(seconds: 30));

    List<dynamic> responseJson = jsonDecode(utf8.decode(response.bodyBytes));
    return responseJson.map((json) => Product.fromJson(json)).toList();
  }

}
