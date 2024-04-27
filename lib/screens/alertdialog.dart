import 'package:flutter/material.dart';
import 'package:flutterfeb/utils/textThemes.dart';

class AlertDialogg extends StatelessWidget {
  const AlertDialogg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => showAlert(context),
            child: const Text("Show Alert")),
      ),
    );
  }

  showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.teal,
            icon: const Icon(
              Icons.question_mark,
              color: Colors.red,
              size: 25,
            ),
            title: Text(
              "Exit?",
              style: MyTextThemes.textHeading,
            ),
            content: const Text('Do U Want to Exit !!!!!!'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Yes")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("No")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Cancel"))
            ],
          );
        });
  }
}
