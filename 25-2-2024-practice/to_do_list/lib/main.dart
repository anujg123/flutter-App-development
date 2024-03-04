import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List tasks = [
    {""},
    {""},
    {""},
    {""},
    {""}
  ];

  List colorList=const [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
  ];

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TO-Do-list"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Expanded(
      child:Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              color: colorList[index % colorList.length],
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                       Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                            "data:image/jpeg;base64,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"),
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Task title"),
                          Text("Task Content"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text("25/2/2024"),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            tasks.removeAt(index);
                          });
                        },
                        icon: const Icon(Icons.delete),
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
       floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context, builder: (BuildContext context){
            return Container(
              margin: const EdgeInsets.all(10),
            child: Column(
              
              children: [
                const Text("Create Task"),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Title",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                      )
                    )
                    
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Content",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                      )
                    )
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Date",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                      )
                    )
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: (){}, child: const Text("Submit")),
              ],
            ),
            );
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
