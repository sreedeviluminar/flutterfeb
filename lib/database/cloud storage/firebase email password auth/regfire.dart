import 'package:flutter/material.dart';
import 'package:flutterfeb/database/cloud%20storage/firebase%20email%20password%20auth/db/firebaseFunctions.dart';
import 'package:flutterfeb/database/cloud%20storage/firebase%20email%20password%20auth/loginfire.dart';
import 'package:get/get.dart';

class RegFire extends StatelessWidget {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Registration Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'EMAIL'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: passController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'PASSWORD'),
              ),
            ),
            MaterialButton(
              onPressed: () {
                registerUser();
              },
              color: Colors.pink,
              shape: const StadiumBorder(),
              child: const Text("Register"),
            )
          ],
        ),
      ),
    );
  }

  void registerUser() {
    String email = emailController.text.trim();
    String pass = passController.text.trim();

    FirebaseFunctions()
        .signUpUser(email: email, pwd: pass)
        .then((response) {
      if (response == null) {
        Get.to(LoginFire());
      } else {
        Get.snackbar("Error", response);
      }
    });
  }
}
