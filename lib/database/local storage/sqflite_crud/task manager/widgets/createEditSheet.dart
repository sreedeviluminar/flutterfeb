import 'package:flutter/material.dart';
import 'package:flutterfeb/database/local%20storage/sqflite_crud/task%20manager/database/db.dart';
import 'package:flutterfeb/utils/mycolors.dart';

final titleController = TextEditingController();
final contentController = TextEditingController();

showSheet(int? id, BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
              bottom: MediaQuery.of(context).viewInsets.bottom + 120),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: titleController,
                  decoration: const InputDecoration(
                      hintText: "Title", border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
                child: TextField(
                  maxLines: 6,
                  controller: contentController,
                  decoration: const InputDecoration(
                      hintText: "Content", border: OutlineInputBorder()),
                ),
              ),
              MaterialButton(
                  color: MyColors.basicColor,
                  shape: const StadiumBorder(),
                  onPressed: () {
                    createNote();
                    titleController.clear();
                    contentController.clear();
                    Navigator.pop(context);
                  },
                  child: Text(id == null ? "Create Note" : "Update Note"))
            ],
          ),
        );
      });
}

void createNote() async{
  String title = titleController.text;
  String content = contentController.text;
  int id = await SQLHelper.createNote(title, content);
}
