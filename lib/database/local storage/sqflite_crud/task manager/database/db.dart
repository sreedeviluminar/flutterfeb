import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  //create database
  static Future<sql.Database> openOrCreateDb() async {
    return await sql.openDatabase('notes', version: 1,
        onCreate: (database, version) async {
      await createTable(database);
    });
  }

  //create Table
  static Future<void> createTable(sql.Database database) async {
    await database.execute(
        'CREATE TABLE MyNotes (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, title TEXT, content TEXT)');
  }

  // to create a new note
  static Future<int> createNote(String title, String content) async {
    final db = await SQLHelper.openOrCreateDb(); // to open  or create db
    final data = {"title": title, 'content': content};
    final id = await db.insert("MyNotes", data);
    return id;
  }

  //to read all the data from db in order of their id
  static Future<List<Map<String,dynamic>>> readNote() async{
    final db = await SQLHelper.openOrCreateDb();
    return db.query("MyNotes",orderBy: 'id');
  }

}
