import 'package:flutter/material.dart';
import 'package:flutterfeb/database/local%20storage/hive_login_using_typeAdapters/screens/regHive.dart';
import 'package:flutterfeb/utils/textThemes.dart';

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
            ElevatedButton(onPressed: () {}, child: const Text("Login Here!!")),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HiveRegister()));
                },
                child: const Text("Not a User? Register Here!!"))
          ],
        ),
      ),
    );
  }
}
