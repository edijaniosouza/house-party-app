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
      '$_id INTEGER PRIMARY KEY,'
      '$_name TEXT,'
      '$_userName TEXT,'
      '$_email TEXT,'
      '$_password TEXT'
    ')'
  );

  /// Salva o usuário no banco de dados interno do dispositivo
  Future<int> save(User user) async {
    Database db = await createDataBase();
    Map<String, dynamic> userMap = {
      _name : user.name,
      _userName : user.userName,
      _email : user.email,
      _password : user.password
    };
    print('Salvando usuário...');
    int id = await db.insert(_tableName, userMap);
    print('Usuário salvo com o ID $id.');
    return id;
  }

  /// Consulta todos os usuários salvos no bando de dados do dispositivo
  Future<List<Map<String, dynamic>>> findAll() async {
    Database db = await createDataBase();
    return db.query(tableName);
  }

  /// Deleta os usuários salvos no banco de dados do dispositivo
  Future<void> deleteAll() async {
    print('Deletando usuários da tabela $_tableName');
    Database db = await createDataBase();
    int deletedLines = await db.delete(_tableName);
    print('$deletedLines linha(s) deletada(s)');
  }

  static String get tableName => _tableName;
  static String get id => _id;
  static String get name => _name;
  static String get userName => _userName;
  static String get email => _email;
  static String get password => _password;

}
