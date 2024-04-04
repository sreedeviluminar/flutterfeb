import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
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
                Text(
                  "Login Page",
                  style: GoogleFonts.sahitya(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Login To Your Account",
                  style: GoogleFonts.sahitya(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const TextField(
                  decoration: InputDecoration(
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
                  onPressed: () {},
                  color: Colors.green,
                  minWidth: 200,
                  shape: const StadiumBorder(),
                  child: const Text("Login"),
                ),
                const SizedBox(height: 20), // Adjusted spacer
                RichText(
                  text: const TextSpan(
                    text: "Not a User?",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: " SignUp",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                // Adding space at the bottom (20% of screen height)
                SizedBox(height: MediaQuery.of(context).size.height * 0.2),
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
