import 'package:flutter/material.dart';
import 'package:flutterfeb/database/local%20storage/sqflite_crud/task%20manager/database/db.dart';
import 'package:flutterfeb/utils/mycolors.dart';
import 'package:flutterfeb/utils/textThemes.dart';

import '../utils/snackbar.dart';

class TaskHome extends StatefulWidget {
  @override
  State<TaskHome> createState() => _TaskHomeState();
}

class _TaskHomeState extends State<TaskHome> {
  List<Map<String, dynamic>> taskFromDb = [];

  @override
  void initState() {
    readTask();
    super.initState();
  }

  Future<void> readTask() async {
    //read the note from db and store it in the list task
    final task = await SQLHelper.readNote();
    setState(() {
      //update the list according to crud
      taskFromDb = task;
    });
  }

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
      body: taskFromDb.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    "MyTasks",
                    style: MyTextThemes.textHeading,
                  ),
                ),
                Expanded(
                    child: GridView.builder(
                        itemCount: taskFromDb.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          final task = taskFromDb[index];
                          return Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.task,
                                  size: 20,
                                ),
                                Text(
                                  task['title'],
                                  // taskFromDb[index]["title"],
                                  style: MyTextThemes.textHeading,
                                ),
                                Text(
                                  task['content'],
                                  // taskFromDb[index]["title"],
                                  style: MyTextThemes.bodyTextStyle,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          showSheet(task['id'], context);
                                        },
                                        icon: const Icon(Icons.edit)),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.delete))
                                  ],
                                )
                              ],
                            ),
                          );
                        }))
              ],
            ),
    );
  }

  final titleController = TextEditingController();
  final contentController = TextEditingController();

  showSheet(int? id, BuildContext context) {
    if (id != null) {
      final existingTask =
          taskFromDb.firstWhere((element) => element['id'] == id);
      titleController.text = existingTask['title'];
      contentController.text = existingTask['content'];
    }

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
                      createNote(context);
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

  void createNote(BuildContext context) async {
    String title = titleController.text;
    String content = contentController.text;
    int id = await SQLHelper.createNote(title, content);
    readTask(); // update the list instantly
    if (id != null) {
      showSuccessSnackBar(context);
    } else {
      showErrorSnackBar(context);
    }
  }
}
