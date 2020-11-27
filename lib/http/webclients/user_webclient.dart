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

  Future<bool> loginWithUserName(String userName, String password) async {
    Response response = await client.get('$url/cliente/autenticacao?usuario=$userName&senha=$password');
    if(response.statusCode == 202) {
      return true;
    }
    return false;
  }

  Future<User> loginWithEmail(String email, String password) async {
    Response response = await client.get(
      '$url/cliente/email/$email'
    ).timeout(Duration(seconds: 30));
    
    if (response.statusCode == 200) {
      Map<String, dynamic> responseJson = jsonDecode(utf8.decode(response.bodyBytes));
      User user = User.fromJson(responseJson);
      if(await loginWithUserName(user.userName, password)) {
        return user;
      }
    } else {
      return null;
    }

  }

  Future<User> findByEmail(String email) async {
    Response response = await client.get(
      '$url/cliente/email/$email'
    ).timeout(Duration(seconds: 30));
    Map<String, dynamic> responseJson = jsonDecode(utf8.decode(response.bodyBytes));
    return User.fromJson(responseJson);
  }
}
