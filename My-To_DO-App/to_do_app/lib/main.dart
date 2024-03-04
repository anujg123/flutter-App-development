import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoListScreen(),
    );
  }
}

class ToDoListScreen extends StatefulWidget {
  const ToDoListScreen({super.key});

  @override
  State<ToDoListScreen> createState() => _ToDoListScreenState();
}

class ToDoList {
  String title;
  String content;
  String date;

  ToDoList({required this.title, required this.content, required this.date});
}

class _ToDoListScreenState extends State<ToDoListScreen> {
  List<ToDoList> tasks = [];

  List colorList = const [
    Color.fromRGBO(253, 181, 181, 1),
    Color.fromRGBO(160, 187, 255, 1),
    Color.fromRGBO(253, 249, 177, 1),
    Color.fromRGBO(237, 166, 237, 1),
  ];

  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  bool isEditTask = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: const Text('To-Do List'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: colorList[index % colorList.length],
                    margin: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                  "data:image/png;base64,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"),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  tasks[index].title,
                                  style: GoogleFonts.quicksand(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800)),
                                ),
                                Text(
                                  tasks[index].content,
                                  style: GoogleFonts.quicksand(
                                      textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600)),
                                ),
                              ],
                            )),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              tasks[index].date,
                              style: GoogleFonts.quicksand(
                                  textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              )),
                            ),
                            const Spacer(),
                            IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                isEditTask = true;
                                showModalmyBottomSheet(index);
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                _deleteTask(index);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalmyBottomSheet(null);
        },
        backgroundColor: Colors.yellow,
        child: const Icon(
          Icons.add,
          color: Colors.blue,
        ),
      ),
    );
  }

  void _addTask() {
    if (titleController.text.isEmpty ||
        contentController.text.isEmpty ||
        dateController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Please fill in all fields.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      setState(() {
        tasks.add(
          ToDoList(
            title: titleController.text,
            content: contentController.text,
            date: dateController.text,
          ),
        );
        titleController.clear();
        contentController.clear();
        dateController.clear();
      });
    }
  }

  void _editTask(int index) {
    setState(() {
      tasks[index].title = titleController.text;
      tasks[index].content = contentController.text;
      tasks[index].date = dateController.text;
    });
  }

  void _deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  void showModalmyBottomSheet(int? index) {
    if (isEditTask == true && index != null) {
      titleController.text = tasks[index].title;
      contentController.text = tasks[index].content;
      dateController.text = tasks[index].date;
    }
    showModalBottomSheet(
        isScrollControlled: true,
        isDismissible: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Create Task",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: titleController,
                    decoration: const InputDecoration(
                      labelText: "Title",
                      hintText: "Enter Title",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: contentController,
                    decoration: const InputDecoration(
                      labelText: "Content",
                      hintText: "Enter Content",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: dateController,
                    readOnly: true,
                    decoration: const InputDecoration(
                      labelText: "Date",
                      hintText: "Enter Date",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.yellow,
                        ),
                      ),
                      suffixIcon: Icon(
                        Icons.calendar_month,
                      ),
                    ),
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2024),
                          lastDate: DateTime(2025));
                      String formatedDate =
                          DateFormat.yMMMd().format(pickedDate!);
                      setState(() {
                        dateController.text = formatedDate;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 250,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.yellow)),
                      onPressed: () {
                        if (isEditTask == true) {
                          _editTask(index!);
                          isEditTask=false;
                        } else {
                          _addTask();
                        }
                        titleController.clear();
                        contentController.clear();
                        dateController.clear();
                        Navigator.pop(context);
                      },
                      child: const Text("Add Task"),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
