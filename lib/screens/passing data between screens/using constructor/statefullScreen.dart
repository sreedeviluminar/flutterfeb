import 'package:flutter/material.dart';
import 'package:flutterfeb/utils/textThemes.dart';
class StatefulScreen extends StatefulWidget {
  final String name;
  final String? image;
  const StatefulScreen({super.key, required this.name, this.image});
  @override
  State<StatefulScreen> createState() => _StatefulScreenState();
}

class _StatefulScreenState extends State<StatefulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Screen"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(widget.image!),
            Text(widget.name,style: MyTextThemes.textHeading,),
          ],
        ),
      ),
    );
  }
}
