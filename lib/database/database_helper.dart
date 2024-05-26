// ignore_for_file: avoid_print

/*import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  // Singleton yapısı
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  // Veritabanı getter'ı
  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('app_database.db');
    return _database!;
  }

  // Veritabanı başlatma
  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    print('Veritabanı yolu: $path');

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  // Tablo oluşturma
  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    const emailType = 'TEXT NOT NULL UNIQUE';
    const tcType = 'TEXT NOT NULL UNIQUE';

    print('Tablolar oluşturuluyor...');

    await db.execute('''
CREATE TABLE users (
  id $idType,
  tc_number $tcType,
  email $emailType,
  first_name $textType,
  last_name $textType,
  password $textType
  )
''');

    print('Tablolar oluşturuldu.');
  }

  // Kullanıcı ekleme
  Future<int> insertUser(Map<String, dynamic> row) async {
    final db = await instance.database;

    final id = await db.insert(
      'users',
      row,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    print('Kullanıcı eklendi, ID: $id');
    return id;
  }

  // Kimlik numarasına göre kullanıcı sorgulama
  Future<List<Map<String, dynamic>>> queryUserByTC(String tcNumber) async {
    final db = await instance.database;

    final result = await db.query(
      'users',
      where: 'tc_number = ?',
      whereArgs: [tcNumber],
    );

    print('Kimlik numarasına göre kullanıcı sorgulandı: ${result.length} adet kullanıcı bulundu.');
    return result;
  }

  // E-posta adresine göre kullanıcı sorgulama
  Future<List<Map<String, dynamic>>> queryUserByEmail(String email) async {
    final db = await instance.database;

    final result = await db.query(
      'users',
      where: 'email = ?',
      whereArgs: [email],
    );

    print('E-posta adresine göre kullanıcı sorgulandı: ${result.length} adet kullanıcı bulundu.');
    return result;
  }

  // Veri güncelleme
  Future<int> updateUser(Map<String, dynamic> row) async {
    final db = await instance.database;

    int id = row['id'];
    final result = await db.update(
      'users',
      row,
      where: 'id = ?',
      whereArgs: [id],
    );

    print('Kullanıcı güncellendi, ID: $id, Değişiklik sayısı: $result');
    return result;
  }

  // Veri silme
  Future<int> deleteUser(int id) async {
    final db = await instance.database;

    final result = await db.delete(
      'users',
      where: 'id = ?',
      whereArgs: [id],
    );

    print('Kullanıcı silindi, ID: $id, Silinen satır sayısı: $result');
    return result;
  }
}*/
// DatabaseHelper.dart

/*import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('app_database.db');
    return _database!;
  }
Future _initDB(String filePath) async {
  final dbPath = await getDatabasesPath();
  final path = join(dbPath, filePath);

  print('Database path: $path');

  // sqflite_common_ffi kütüphanesini kullanırken databaseFactory'yi başlatın

  databaseFactory = databaseFactoryFfi;

  return await openDatabase(path, version: 1, onCreate: _createDB);
}


  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    const emailType = 'TEXT NOT NULL UNIQUE';
    const tcType = 'TEXT NOT NULL UNIQUE';
    const confirmationCodeType = 'TEXT'; // Onay kodu alanı

    print('Creating tables...');

    await db.execute('''
CREATE TABLE users (
  id $idType,
  tc_number $tcType,
  email $emailType,
  first_name $textType,
  last_name $textType,
  password $textType,
  confirmation_code $confirmationCodeType
  )
''');

    print('Tables created.');
  }

  Future<int> insertUser(Map<String, dynamic> row) async {
    final db = await instance.database;
    final id = await db.insert(
      'users',
      row,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    print('User inserted, ID: $id');
    return id;
  }

  Future<Map<String, dynamic>?> getUser(
      String username, String idNumber, String password) async {
    Database db = await database;
    List<Map<String, dynamic>> results = await db.query(
      'users',
      where: 'first_name = ? AND tc_number = ? AND password = ?',
      whereArgs: [username, idNumber, password],
    );
    if (results.isNotEmpty) {
      return results.first;
    }
    return null;
  }

  Future<bool> loginUser(
      String username, String idNumber, String password) async {
    Map<String, dynamic>? user = await getUser(username, idNumber, password);
    return user != null;
  }

  Future<List<Map<String, dynamic>>> queryUserByTC(String tcNumber) async {
    final db = await instance.database;
    final result = await db.query(
      'users',
      where: 'tc_number = ?',
      whereArgs: [tcNumber],
    );

    print('User queried by TC, found: ${result.length}');
    return result;
  }

  Future<List<Map<String, dynamic>>> queryUserByEmail(String email) async {
    final db = await instance.database;
    final result = await db.query(
      'users',
      where: 'email = ?',
      whereArgs: [email],
    );

    print('User queried by email, found: ${result.length}');
    return result;
  }
}*/
// ignore: unnecessary_import
/*import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('app_database.db');
    return _database!;
  }
Future _initDB(String filePath) async {
  final dbPath = await getDatabasesPath();
  final path = join(dbPath, filePath);

  print('Database path: $path');

  // sqflite_common_ffi kütüphanesini kullanırken databaseFactory'yi başlatın

  databaseFactory = databaseFactoryFfi;

  return await openDatabase(path, version: 1, onCreate: _createDB);
}


  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    const emailType = 'TEXT NOT NULL UNIQUE';
    const tcType = 'TEXT NOT NULL UNIQUE';
    const confirmationCodeType = 'TEXT'; // Onay kodu alanı

    print('Creating tables...');

    await db.execute('''
CREATE TABLE users (
  id $idType,
  tc_number $tcType,
  email $emailType,
  first_name $textType,
  last_name $textType,
  password $textType,
  confirmation_code $confirmationCodeType
  )
''');

    print('Tables created.');
  }

  Future<int> insertUser(Map<String, dynamic> row) async {
    final db = await instance.database;
    final id = await db.insert(
      'users',
      row,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    print('User inserted, ID: $id');
    return id;
  }

  Future<Map<String, dynamic>?> getUser(
      String username, String idNumber, String password) async {
    Database db = await database;
    List<Map<String, dynamic>> results = await db.query(
      'users',
      where: 'first_name = ? AND tc_number = ? AND password = ?',
      whereArgs: [username, idNumber, password],
    );
    if (results.isNotEmpty) {
      return results.first;
    }
    return null;
  }

  Future<bool> loginUser(
      String username, String idNumber, String password) async {
    Map<String, dynamic>? user = await getUser(username, idNumber, password);
    return user != null;
  }

  Future<List<Map<String, dynamic>>> queryUserByTC(String tcNumber) async {
    final db = await instance.database;
    final result = await db.query(
      'users',
      where: 'tc_number = ?',
      whereArgs: [tcNumber],
    );

    print('User queried by TC, found: ${result.length}');
    return result;
  }

  Future<List<Map<String, dynamic>>> queryUserByEmail(String email) async {
    final db = await instance.database;
    final result = await db.query(
      'users',
      where: 'email = ?',
      whereArgs: [email],
    );

    print('User queried by email, found: ${result.length}');
    return result;
  }
}*/
// SQFlite FFI Web importı eklenmiş
/*import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('app_database.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    print('Database path: $path');

    // SQFlite FFI Web kullanılıyor
    databaseFactory = databaseFactoryFfi;

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    const emailType = 'TEXT NOT NULL UNIQUE';
    const tcType = 'TEXT NOT NULL UNIQUE';
    const confirmationCodeType = 'TEXT'; // Onay kodu alanı

    print('Creating tables...');

    await db.execute('''
CREATE TABLE users (
  id $idType,
  tc_number $tcType,
  email $emailType,
  first_name $textType,
  last_name $textType,
  password $textType,
  confirmation_code $confirmationCodeType
  )
''');

    print('Tables created.');
  }

  Future<int> insertUser(Map<String, dynamic> row) async {
    final db = await instance.database;
    final id = await db.insert(
      'users',
      row,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    print('User inserted, ID: $id');
    return id;
  }

  Future<Map<String, dynamic>?> getUser(
      String username, String idNumber, String password) async {
    Database db = await database;
    List<Map<String, dynamic>> results = await db.query(
      'users',
      where: 'first_name = ? AND tc_number = ? AND password = ?',
      whereArgs: [username, idNumber, password],
    );
    if (results.isNotEmpty) {
      return results.first;
    }
    return null;
  }

  Future<bool> loginUser(
      String username, String idNumber, String password) async {
    Map<String, dynamic>? user = await getUser(username, idNumber, password);
    return user != null;
  }

  Future<List<Map<String, dynamic>>> queryUserByTC(String tcNumber) async {
    final db = await instance.database;
    final result = await db.query(
      'users',
      where: 'tc_number = ?',
      whereArgs: [tcNumber],
    );

    print('User queried by TC, found: ${result.length}');
    return result;
  }

  Future<List<Map<String, dynamic>>> queryUserByEmail(String email) async {
    final db = await instance.database;
    final result = await db.query(
      'users',
      where: 'email = ?',
      whereArgs: [email],
    );

    print('User queried by email, found: ${result.length}');
    return result;
  }
}
*/
/*import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('app_database.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    print('Database path: $path');

    // Web platformu için sqflite_common_ffi_web kullanımı
    if (kIsWeb) {
      return await databaseFactoryFfiWeb.openDatabase(path);
    } else {
      // Diğer platformlar için sqflite_common_ffi kullanımı
      return await openDatabase(path, version: 1, onCreate: _createDB);
    }
  }

  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    const emailType = 'TEXT NOT NULL UNIQUE';
    const tcType = 'TEXT NOT NULL UNIQUE';
    const confirmationCodeType = 'TEXT'; // Onay kodu alanı

    print('Creating tables...');

    await db.execute('''
CREATE TABLE users (
  id $idType,
  tc_number $tcType,
  email $emailType,
  first_name $textType,
  last_name $textType,
  password $textType,
  confirmation_code $confirmationCodeType
  )
''');

    print('Tables created.');
  }

  Future<int> insertUser(Map<String, dynamic> row) async {
    final db = await instance.database;
    final id = await db.insert(
      'users',
      row,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    print('User inserted, ID: $id');
    return id;
  }

  Future<Map<String, dynamic>?> getUser(
      String username, String idNumber, String password) async {
    Database db = await database;
    List<Map<String, dynamic>> results = await db.query(
      'users',
      where: 'first_name = ? AND tc_number = ? AND password = ?',
      whereArgs: [username, idNumber, password],
    );
    if (results.isNotEmpty) {
      return results.first;
    }
    return null;
  }

  Future<bool> loginUser(
      String username, String idNumber, String password) async {
    Map<String, dynamic>? user = await getUser(username, idNumber, password);
    return user != null;
  }

  Future<List<Map<String, dynamic>>> queryUserByTC(String tcNumber) async {
    final db = await instance.database;
    final result = await db.query(
      'users',
      where: 'tc_number = ?',
      whereArgs: [tcNumber],
    );

    print('User queried by TC, found: ${result.length}');
    return result;
  }

  Future<List<Map<String, dynamic>>> queryUserByEmail(String email) async {
    final db = await instance.database;
    final result = await db.query(
      'users',
      where: 'email = ?',
      whereArgs: [email],
    );

    print('User queried by email, found: ${result.length}');
    return result;
  }
}*/
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';
import 'package:logger/logger.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;
  final logger = Logger();

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('app_database.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    logger.i('Database path: $path'); // Dosya yolunu konsola yazdır

    if (kIsWeb) {
      return await databaseFactoryFfiWeb.openDatabase(path);
    } else {
      return await openDatabase(path, version: 1, onCreate: _createDB);
    }
  }

  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    const emailType = 'TEXT NOT NULL UNIQUE';
    const tcType = 'TEXT NOT NULL UNIQUE';

    logger.i('Creating tables...');

    await db.execute('''
CREATE TABLE users (
  id $idType,
  tc_number $tcType,
  email $emailType,
  first_name $textType,
  last_name $textType,
  password $textType
)
''');

    logger.i('Tables created.');
  }

  Future<int> insertUser(Map<String, dynamic> row) async {
    final db = await instance.database;
    final id = await db.insert('users', row,
        conflictAlgorithm: ConflictAlgorithm.replace);

    logger.i('User inserted, ID: $id');
    return id;
  }

  Future<Map<String, dynamic>?> getUser(
      String username, String idNumber, String password) async {
    final db = await instance.database;
    final results = await db.query(
      'users',
      where: 'first_name = ? AND tc_number = ? AND password = ?',
      whereArgs: [username, idNumber, password],
    );
    logger.i('GetUser results: $results'); // Loglama eklendi
    if (results.isNotEmpty) {
      return results.first;
    }
    return null;
  }

  Future<bool> loginUser(
      String username, String idNumber, String password) async {
    final user = await getUser(username, idNumber, password);
    if (user != null) {
      logger.i('Giriş başarılı: $username');
      return true;
    } else {
      logger.w('Giriş başarısız: $username');
      return false;
    }
  }

  Future<List<Map<String, dynamic>>> queryUserByTC(String tcNumber) async {
    final db = await instance.database;
    final result =
        await db.query('users', where: 'tc_number = ?', whereArgs: [tcNumber]);
    logger.i('User queried by TC, found: ${result.length}');
    return result;
  }

  Future<List<Map<String, dynamic>>> queryUserByEmail(String email) async {
    final db = await instance.database;
    final result =
        await db.query('users', where: 'email = ?', whereArgs: [email]);
    logger.i('User queried by email, found: ${result.length}');
    return result;
  }

  Future<List<Map<String, dynamic>>> getAllUsers() async {
    final db = await instance.database;
    final result = await db.query('users');
    logger.i('All users: $result');
    return result;
  }
}
