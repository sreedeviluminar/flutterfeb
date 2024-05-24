import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterfeb/database/cloud%20storage/firebase%20email%20password%20auth/loginfire.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyCt2J8BYbrxAgKY4mOmZyJaN7VIi56lYlQ",
        appId:  "1:645731062842:android:6e384dcda4a38e59955103",
        messagingSenderId: "",
        projectId: "feb-project-7bbf9")
  );
  runApp(MyAppFire());
}

class MyAppFire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: FireSplash(),
    );
  }
}

class FireSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.off(LoginFire());
    });
    return const Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 50,
        ),
      ),
    );
  }
}
