import 'package:hive/hive.dart';
import '../model/user.dart';

class HiveDB {

  static Future<List<Users>> getAllUsers() async {
    final db = await Hive.openBox<Users>('userdata');
    return db.values.toList();
  }

  static Future<void> addUser(Users user) async{
    final db = await Hive.openBox<Users>('userdata');
    db.put(user.id, user);
  }
}
