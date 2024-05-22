import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutterfeb/database/local%20storage/hive_login_using_typeAdapters/model/user.dart';
import 'package:flutterfeb/database/local%20storage/hive_login_using_typeAdapters/screens/loginHive.dart';
import 'package:flutterfeb/utils/textThemes.dart';
import 'package:get/get.dart';

import '../db/hivedb.dart';

class HiveRegister extends StatefulWidget {
  const HiveRegister({super.key});

  @override
  State<HiveRegister> createState() => _HiveRegisterState();
}

class _HiveRegisterState extends State<HiveRegister> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Registration Page",
          style: MyTextThemes.textHeading,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "Registration Page",
              style: MyTextThemes.textHeading,
            ),
            const SizedBox(
              height: 6,
            ),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                  hintText: "Name", border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
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
            ElevatedButton(
                onPressed: () async {
                  final reg_Users = await HiveDB.getAllUsers();
                  validateSignUp(reg_Users);
                },
                child: const Text("Register Here!!")),
          ],
        ),
      ),
    );
  }

  void validateSignUp(List<Users> reg_users) async {
    final name = nameController.text;
    final email = emailController.text;
    final pass = passController.text;
    bool userAlreadyExist = false;

    final validateEmail = EmailValidator.validate(email);
    if (name != "" && email != "" && pass != "") {
      if (validateEmail == true) {
        await Future.forEach(reg_users, (singleUser) {
          if(singleUser.email == email){
            userAlreadyExist = true;
          }else{
            userAlreadyExist = false;
          }
        });
        if(userAlreadyExist == true){
          Get.snackbar("Warning!!", "User Already Exist",
              backgroundColor: Colors.orange, colorText: Colors.white);
        }else{
          if(pass.length < 6){
            Get.snackbar("Error", 'Password Length must be >= 6',
                backgroundColor: Colors.red, colorText: Colors.white);
          }else{
            final user = Users(name: name, email: email, password: pass);
            await HiveDB.addUser(user);
            Get.snackbar("Success", "User Registration Successful",
                backgroundColor: Colors.green, colorText: Colors.white);
            Get.to(HiveLogin());
          }
        }
      }else{
        Get.snackbar("Failed!!", "Please enter a Valid Email..",
            backgroundColor: Colors.red, colorText: Colors.white);
      }
    } else {
      Get.snackbar("Warning!!", "Fields Must Not be Empty..",
          backgroundColor: Colors.orange, colorText: Colors.white);
    }
  }
}
