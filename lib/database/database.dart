import 'package:house_party/database/dao/user_dao.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> createDataBase() async {
  String path = join(await getDatabasesPath(), 'database.db');
  return await openDatabase(
    path,
    onCreate: (db, version) {
      print('Criando banco de dados');
      print('Criando tabela de usuário');
      db.execute(UserDAO.createTable);
      print('Tabela de usuário criada');
    },
    onDowngrade: onDatabaseDowngradeDelete,
    version: 1,
  );
}
