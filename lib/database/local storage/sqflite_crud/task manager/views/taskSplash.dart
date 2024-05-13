import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutterfeb/database/local%20storage/sqflite_crud/task%20manager/views/taskHome.dart';
import 'package:lottie/lottie.dart';

class TaskSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context)=> TaskHome()));
    });
    return Scaffold(
      body : Center(
        child: Lottie.asset("assets/animations/task.json"),
      )
    );
  }
}
