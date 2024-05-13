import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  //create database
  static Future<sql.Database> openOrCreateDb() async {
    return await sql.openDatabase('notes', version: 1,
        onCreate: (database, version) async {
      await creatTable(database);
    });
  }

  //create Table
  static Future<void> creatTable(sql.Database database) async {
    await database.execute(
        'CREATE TABLE MyNotes (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, title TEXT, content TEXT)');
  }

  // to create a new note
  static Future<int> createNote(String title, String content) async {
    final db = await SQLHelper.openOrCreateDb(); // to open db
    final data = {"title": title, 'content': content};
    final id = await db.insert("MyNotes", data);
    return id;
  }
}
