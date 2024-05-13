import 'package:flutter/material.dart';
import 'package:flutterfeb/utils/mycolors.dart';
import 'package:flutterfeb/utils/textThemes.dart';

import '../widgets/createEditSheet.dart';

class TaskHome extends StatefulWidget {
  @override
  State<TaskHome> createState() => _TaskHomeState();
}

class _TaskHomeState extends State<TaskHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.basicColor,
        title: Text(
          "Create Your Notes",
          style: MyTextThemes.textHeading,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColors.basicColor,
        onPressed: () => showSheet(null,context), // while creating a note id wil be null
        child: const Icon(
          Icons.note_alt_outlined,
        ),
      ),
    );
  }


}
