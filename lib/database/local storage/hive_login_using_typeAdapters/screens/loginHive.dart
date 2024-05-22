import 'package:flutter/material.dart';
import 'package:flutterfeb/database/local%20storage/hive_login_using_typeAdapters/db/hivedb.dart';
import 'package:flutterfeb/database/local%20storage/hive_login_using_typeAdapters/model/user.dart';
import 'package:flutterfeb/database/local%20storage/hive_login_using_typeAdapters/screens/regHive.dart';
import 'package:flutterfeb/utils/textThemes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'homeHive.dart';

class HiveLogin extends StatefulWidget {
  @override
  State<HiveLogin> createState() => _HiveLoginState();
}
class _HiveLoginState extends State<HiveLogin> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Login Page",
          style: MyTextThemes.textHeading,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "Login Page",
              style: MyTextThemes.textHeading,
            ),
            const SizedBox(
              height: 6,
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                  hintText: "Email", border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: passController,
              decoration: const InputDecoration(
                  hintText: "Password", border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () async{

              final users = await HiveDB.getAllUsers();
              validateLogin(users);

            }, child: const Text("Login Here!!")),
            TextButton(
                onPressed: () {
                  Get.to(HiveRegister());
                },
                child: const Text("Not a User? Register Here!!"))
          ],
        ),
      ),
    );
  }
  void validateLogin(List<Users> users) async{
    final email = emailController.text;
    final pass  = passController.text;

    if(email != "" && pass !=""){
      await Future.forEach(users, (singleUser) {
        if(email == singleUser.email && pass == singleUser.password){
           final name = singleUser.name;
           Get.offAll(HiveHome(name));
           Get.snackbar("Success", 'Login Success',
           backgroundColor: Colors.green,colorText: Colors.white);
        }else{
          Get.snackbar("Error", 'Login Failed',
              backgroundColor: Colors.red,colorText: Colors.white);
        }
      });
    }else{
      Get.snackbar("Warning", 'Fields Must not be empty',
          backgroundColor: Colors.orange,colorText: Colors.white);
    }
  }
}
