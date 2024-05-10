import 'package:flutter/material.dart';
import 'package:flutterfeb/database/local%20storage/using%20shared%20preference/view/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homee extends StatefulWidget {
  @override
  State<Homee> createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  late SharedPreferences preferences;
  String? email;

  @override
  void initState() {
    fetchdata();
    super.initState();
  }

  void fetchdata() async {
    preferences = await SharedPreferences.getInstance();
    setState(() {
      email = preferences.getString("username");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Welcome $email"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              preferences.setBool('userLoggedIn', false);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>
                      LoginShared()));
            },
            child: Text("LogOut")),
      ),
    );
  }
}
