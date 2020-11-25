import 'dart:convert';

import 'package:house_party/http/webclient.dart';
import 'package:house_party/models/user.dart';
import 'package:http/http.dart';

class UserWebClient {

  Future<void> saveUser(User user) async {
    client.post(
      '$url/cliente/cadastro',
      body: jsonEncode(user.toMap()),
      headers:
      {
        "Accept": "application/json",
        "content-type": "application/json"
      }
      ).timeout(Duration(seconds: 30));
  }

  Future<User> findByEmail(String email) async {
    Response response = await client.get(
      '$url/?email=$email'
    ).timeout(Duration(seconds: 30));
    User responseJson = jsonDecode(utf8.decode(response.bodyBytes));
    return responseJson;
  }
}
