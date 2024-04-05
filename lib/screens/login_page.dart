import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/registration.dart';
import 'package:flutterfeb/utils/cont_snackbar.dart';
import 'package:flutterfeb/utils/mycolors.dart';
import 'package:flutterfeb/utils/textThemes.dart';

import 'home1.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "admin";
  String password = 'abc123';

  var usercontroller = TextEditingController();
  var pwdcontroller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    usercontroller.dispose();
    pwdcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          //to avoid scrollable action
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(height: 50), // Adding space at the top
                Text("Login Page", style: MyTextThemes.textHeading),
                const SizedBox(
                  height: 15,
                ),
                Text("Login To Your Account",
                    style: MyTextThemes.bodyTextStyle),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: usercontroller,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person_outline_outlined),
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    hintText: 'Enter your email here',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: pwdcontroller,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.password_outlined),
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: 'Enter your password here',
                    helperText:
                        'Password must contain upper and lowercase letters',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                MaterialButton(
                  onPressed: () {
                    if (username == usercontroller.text &&
                        password == pwdcontroller.text) {
                      successSnackbar(context);

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage1()));
                    } else {
                      errorSnackbar(context);
                    }
                    usercontroller.clear();
                    pwdcontroller.clear();
                  },
                  color: MyColors.basicColor,
                  minWidth: 200,
                  shape: const StadiumBorder(),
                  child: const Text("Login"),
                ),
                const SizedBox(height: 20), // Adjusted spacer
                RichText(
                  text: TextSpan(
                    text: "Not a User?",
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => RegistrationPage()));
                          },
                        text: " SignUp",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                // Adding space at the bottom (20% of screen height)
                Image.network(
                  "https://www.pngmart.com/files/10/Pine-Branch-Background-PNG.png",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
