import 'package:hive/hive.dart';

part 'user.g.dart';  // file name of typeAdapter generate with respect to this model class

@HiveType(typeId: 1) //typeId range from 0 to 223 must be unique for each model class
class Users {

  @HiveField(0)
  final String name;

  @HiveField(1)
  final String email;

  @HiveField(2)
  final String password;

  @HiveField(3)
  String? id;

  Users({required this.name, required this.email, required this.password}) {
    id = DateTime.now().microsecondsSinceEpoch.toString();
  }
}
