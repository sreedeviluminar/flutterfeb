import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/miniquizzApp/quizzPage.dart';

class QuizMain extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mini Quiz App"),),
      body: QuizPage(),
    );
  }
}
