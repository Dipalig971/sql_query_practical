import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper{

  static DatabaseHelper databaseHelper = DatabaseHelper();

  Database? _database;

  Future<Database> initDatabase() async {

    String path = await getDatabasesPath();
    String dataBasePath = join(path,'Student.db');

    Database database = await openDatabase(dataBasePath,version: 1,onCreate:(db, version) {
      'CREATE TABLE Student(id INTEGER PRIMARY KEY,name TEXT,age INTEGER,course TEXT)';
    },);
    return database;
  }

  Future<Database> get database async {
    return _database ?? await initDatabase();
  }

  Future<void> insertData() async {
    Database db = await database;
    int id = await db.rawInsert('INSERT INTO Students (name, age, course) VALUES ("DIPALI GUNJAL", 20, "Master in Flutter Developer")');
  }
}
