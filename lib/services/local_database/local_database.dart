import 'package:sqflite/sqflite.dart';

class LocalDatabase {
  LocalDatabase._singleton();
  static final _contructor = LocalDatabase._singleton();
  factory LocalDatabase() {
    return _contructor;
  }
  Database? _database;
  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = '$databasePath/contacts.db';
    return await openDatabase(path, version: 1, onCreate: _createDatabase);
  }

  Future<void> _createDatabase(Database db, int version) async {
    return db.execute('''
CREATE TABLE Contacts(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  number TEXT NOT NULL
)
''');
  }
}
