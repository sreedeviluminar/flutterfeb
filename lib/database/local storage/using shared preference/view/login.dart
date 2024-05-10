import 'package:flutter/material.dart';
import 'package:flutterfeb/database/local%20storage/using%20shared%20preference/view/home.dart';
import 'package:flutterfeb/database/local%20storage/using%20shared%20preference/view/registration.dart';
import 'package:flutterfeb/utils/textThemes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginShared extends StatefulWidget {
  @override
  State<LoginShared> createState() => _LoginSharedState();
}

class _LoginSharedState extends State<LoginShared> {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  late SharedPreferences preferences; // instance of shared preference
  late bool loggedIn;

  @override
  void initState() {
    check_user_already_logined();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login Here!!!!",
              style: MyTextThemes.textHeading,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    hintText: "Email", border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: pwdController,
                decoration: const InputDecoration(
                    hintText: "Password", border: OutlineInputBorder()),
              ),
            ),
            MaterialButton(
              shape: const StadiumBorder(),
              onPressed: () {
                storeDataandLogin(emailController.text, pwdController.text);
              },
              color: Colors.green,
              child: const Text("Login"),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegistrationShared()));
                },
                child: Text(
                  "Not a User? Register Here!!!",
                  style: MyTextThemes.bodyTextStyle,
                ))
          ],
        ),
      ),
    );
  }

  void storeDataandLogin(String email, String password) async {
    preferences = await SharedPreferences.getInstance();
    preferences.setString("username", email);
    preferences.setBool('userLoggedIn', true);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) =>
                    Homee()));
  }

  void check_user_already_logined() async{
    preferences = await SharedPreferences.getInstance();
    loggedIn = preferences.getBool('userLoggedIn') ?? false;

    if(loggedIn == true){
      Navigator.push(
          context, MaterialPageRoute(builder: (context) =>
                                 Homee()));
    }

  }
}
