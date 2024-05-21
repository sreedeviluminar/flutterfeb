import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfeb/database/local%20storage/hive_login_using_typeAdapters/model/user.dart';
import 'package:flutterfeb/database/local%20storage/hive_login_using_typeAdapters/screens/loginHive.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive_flutter/adapters.dart';

void main(){
  Hive.initFlutter();
  Hive.registerAdapter(UsersAdapter());
  Hive.openBox<Users>("userdata");
  runApp(MyHive());
}

class MyHive  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return GetMaterialApp(
     home: HiveLogin(),
   );
  }
}