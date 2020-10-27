import 'dart:convert';

import 'package:house_party/http/webclient.dart';
import 'package:house_party/models/category.dart';
import 'package:http/http.dart';

class CategoryWebClient {

  Future<List<Category>> findAll() async {
    final Response response = await client.get('$url/categoria').timeout(Duration(seconds: 30));

    final List<dynamic> responseJson = jsonDecode(response.body);
    return responseJson.map((json) => Category.fromJson(json)).toList();
  }
}
