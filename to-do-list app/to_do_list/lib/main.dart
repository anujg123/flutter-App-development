import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
  final String title;
  final String content;
  final String date;

  ToDoList({required this.title, required this.content, required this.date});
}

class _ToDoListScreenState extends State<ToDoListScreen> {
  List<ToDoList> tasks = [];

  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  bool isAddingTask = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: const Text('To-Do List'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Container(
                  color: const Color.fromARGB(255, 255, 192, 187),
                  child: ListTile(
                    title: Text(tasks[index].title),
                    subtitle: Text(tasks[index].content),
                    leading: Text(tasks[index].date),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            _editTask(index);
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
                  ),
                );
              },
            ),
          ),
          Visibility(
            visible: isAddingTask,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    controller: titleController,
                    decoration: const InputDecoration(
                      hintText: 'Enter title',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: contentController,
                    decoration: const InputDecoration(
                      hintText: 'Enter content',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: dateController,
                    decoration: const InputDecoration(
                      hintText: 'Enter date ',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.red)
                      ),
                      onPressed: _addTask,
                      child: const Text('Add Task'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            width: 200,
            child: ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.amber)
              ),
              onPressed: () {
                setState(() {
                  isAddingTask = !isAddingTask;
                });
              },
              child: Text(isAddingTask ? 'Cancel' : 'Add Task'),
            ),
          ),
        ],
      ),
    );
  }

  void _addTask() {
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
      isAddingTask = false;
    });
  }

  void _editTask(int index) {
    titleController.text = tasks[index].title;
    contentController.text = tasks[index].content;
    dateController.text = tasks[index].date;
  }

  void _deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }
}


