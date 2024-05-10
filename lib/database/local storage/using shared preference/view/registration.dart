import 'package:flutter/material.dart';

import '../../../../utils/textThemes.dart';

class RegistrationShared extends StatefulWidget {
  const RegistrationShared({super.key});

  @override
  State<RegistrationShared> createState() => _RegistrationSharedState();
}

class _RegistrationSharedState extends State<RegistrationShared> {
  final emailContrl = TextEditingController();
  final passContrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Registration Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Register Here!!!!",
              style: MyTextThemes.textHeading,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: emailContrl,
                decoration: const InputDecoration(
                    hintText: "Email", border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: passContrl,
                decoration: const InputDecoration(
                    hintText: "Password", border: OutlineInputBorder()),
              ),
            ),
            MaterialButton(
              shape: const StadiumBorder(),
              onPressed: () {},
              color: Colors.purple,
              child: const Text("Register"),
            )
          ],
        ),
      ),
    );
  }
}
