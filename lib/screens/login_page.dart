import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(child: Padding(
              padding:  EdgeInsets.only(
                  left: 15.0,
                  right: 15,
                  top: 15,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(
                children: [
                  Text(
                    "Login Page",
                    style: GoogleFonts.sahitya(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.green),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Login To Your Account",
                    style: GoogleFonts.sahitya(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_outline_outlined),
                        border: OutlineInputBorder(),
                        labelText: "Email",
                        hintText: 'Enter your email here'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.password_outlined),
                          border: OutlineInputBorder(),
                          labelText: "Password",
                          hintText: 'Enter your password here',
                          helperText:
                          'Password must contain upper and lowercase letters')),
                  const SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.green,
                    minWidth: 200,
                    shape: StadiumBorder(),
                    child: Text("Login"),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {},
                  //   child: const Text("Login"),
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: Colors.green,
                  //   ),
                  // ),
                  RichText(
                      text: const TextSpan(
                          text: "Not a User?",
                          style: TextStyle(
                              color: Colors.black),
                          children: [
                            TextSpan(
                                text: " SignUp",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black))
                          ])),
                ],
              ),
            )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.network(
                  "https://www.pngmart.com/files/10/Pine-Branch-Background-PNG.png"),
            )
          ],
        ),
      ),
    );
  }
}
