import 'package:house_party/database/database.dart';
import 'package:house_party/models/user.dart';
import 'package:sqflite/sqflite.dart';

class UserDAO {
  
  static const String _tableName = 'USER';
  static const String _id = 'ID_USER';
  static const String _name = 'NAME';
  static const String _userName = 'USERNAME';
  static const String _email = 'EMAIL';
  static const String _password = 'PASSWORD';

  static const String createTable = (
    'CREATE TABLE $_tableName('
    '$_id PRIMARY KEY,'
    '$_name TEXT,'
    '$_userName TEXT,'
    '$_email TEXT,'
    '$_password TEXT,'
    ');'
  );

  void save(User user) async {
    Database db = await createDataBase();

    Map<String, dynamic> userMap = {
      _name: user.name,
      _userName: user.userName,
      _email: user.email,
      _password: user.password
    };

    db.insert(_tableName, userMap);
  }
  
}
