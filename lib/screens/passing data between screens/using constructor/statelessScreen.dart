import 'package:flutter/material.dart';

class StatelessScreen extends StatelessWidget {
  final String name;
  final String? image;

  const StatelessScreen({
    super.key,
    required this.name,
    this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.orange,
        title: Text(name),
      ),
      body: Center(
        child: Image.asset(image!),
      ),
    );
  }
}
