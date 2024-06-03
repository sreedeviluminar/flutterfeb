import 'package:flutter/material.dart';
import 'package:flutterfeb/database/cloud%20storage/firebase%20email%20password%20auth/db/firebaseFunctions.dart';
import 'package:flutterfeb/database/cloud%20storage/firebase%20email%20password%20auth/loginfire.dart';
import 'package:get/get.dart';

class HomeFire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              //await FirebaseAuth.instance.signOut();
              logoutUser();
            },
            child: const Text("LogOut")),
      ),
    );
  }

  void logoutUser() {
    FirebaseFunctions().logoutUser().
    then((value) => Get.off(LoginFire()));
  }
}
